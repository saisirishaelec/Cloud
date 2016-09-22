# encoding: utf-8
# author: Dominik Richter
# author: Christoph Hartmann
#
# This is heavily based on:
#
#   OHAI https://github.com/chef/ohai
#   by Adam Jacob, Chef Software Inc
#

require 'train/extras/linux_lsb'

module Train::Extras
  module DetectLinux # rubocop:disable Metrics/ModuleLength
    include Train::Extras::LinuxLSB

    def detect_linux_via_config # rubocop:disable Metrics/AbcSize, Metrics/CyclomaticComplexity, Metrics/MethodLength, Metrics/PerceivedComplexity
      if !(raw = get_config('oracle-release')).nil?
        @platform[:family] = 'oracle'
        @platform[:release] = redhatish_version(raw)
      elsif !(raw = get_config('/etc/enterprise-release')).nil?
        @platform[:family] = 'oracle'
        @platform[:release] = redhatish_version(raw)
      elsif !(raw = get_config('/etc/debian_version')).nil?
        case lsb[:id]
        when /ubuntu/i
          @platform[:family] = 'ubuntu'
          @platform[:release] = lsb[:release]
        when /linuxmint/i
          @platform[:family] = 'linuxmint'
          @platform[:release] = lsb[:release]
        else
          @platform[:family] = unix_file?('/usr/bin/raspi-config') ? 'raspbian' : 'debian'
          @platform[:release] = raw.chomp
        end
      elsif !(raw = get_config('/etc/parallels-release')).nil?
        @platform[:family] = redhatish_platform(raw)
        @platform[:release] = raw[/(\d\.\d\.\d)/, 1]
      elsif !(raw = get_config('/etc/redhat-release')).nil?
        # TODO: Cisco
        # TODO: fully investigate os-release and integrate it;
        # here we just use it for centos
        if !(osrel = get_config('/etc/os-release')).nil? && osrel =~ /centos/i
          @platform[:family] = 'centos'
        else
          @platform[:family] = redhatish_platform(raw)
        end
        @platform[:release] = redhatish_version(raw)
      elsif !(raw = get_config('/etc/system-release')).nil?
        # Amazon Linux
        @platform[:family] = redhatish_platform(raw)
        @platform[:release] = redhatish_version(raw)
      elsif !(suse = get_config('/etc/SuSE-release')).nil?
        version = suse.scan(/VERSION = (\d+)\nPATCHLEVEL = (\d+)/).flatten.join('.')
        version = suse[/VERSION = ([\d\.]{2,})/, 1] if version == ''
        @platform[:release] = version
        @platform[:family] = 'suse'
        @platform[:family] = 'opensuse' if suse =~ /^openSUSE/
      elsif !(raw = get_config('/etc/arch-release')).nil?
        @platform[:family] = 'arch'
        # Because this is a rolling release distribution,
        # use the kernel release, ex. 4.1.6-1-ARCH
        @platform[:release] = uname_r
      elsif !(raw = get_config('/etc/slackware-version')).nil?
        @platform[:family] = 'slackware'
        @platform[:release] = raw.scan(/(\d+|\.+)/).join
      elsif !(raw = get_config('/etc/exherbo-release')).nil?
        @platform[:family] = 'exherbo'
        # Because this is a rolling release distribution,
        # use the kernel release, ex. 4.1.6
        @platform[:release] = uname_r
      elsif !(raw = get_config('/etc/gentoo-release')).nil?
        @platform[:family] = 'gentoo'
        @platform[:release] = raw.scan(/(\d+|\.+)/).join
      elsif !(raw = get_config('/etc/alpine-release')).nil?
        @platform[:family] = 'alpine'
        @platform[:release] = raw.strip
      elsif !(raw = get_config('/etc/coreos/update.conf')).nil?
        @platform[:family] = 'coreos'
        meta = lsb_config(raw)
        @platform[:release] = meta[:release]
      elsif !(os_info = fetch_os_release).nil?
        if os_info['ID_LIKE'] =~ /wrlinux/
          @platform[:family]  = 'wrlinux'
          @platform[:release] = os_info['VERSION']
        end
      end

      !@platform[:family].nil? && !@platform[:release].nil?
    end

    def uname_s
      @uname_s ||= @backend.run_command('uname -s').stdout
    end

    def uname_r
      @uname_r ||= (
        res = @backend.run_command('uname -r').stdout
        res.strip! unless res.nil?
        res
      )
    end

    def redhatish_platform(conf)
      conf[/^red hat/i] ? 'redhat' : conf[/(\w+)/i, 1].downcase
    end

    def redhatish_version(conf)
      return conf[/((\d+) \(Rawhide\))/i, 1].downcase if conf[/rawhide/i]
      return conf[/Linux ((\d+|\.)+)/i, 1] if conf[/derived from .*linux/i]
      conf[/release ([\d\.]+)/, 1]
    end

    def detect_linux
      # TODO: print an error in this step of the detection
      return false if uname_s.nil? || uname_s.empty?
      return false if uname_r.nil? || uname_r.empty?

      return true if detect_linux_via_config
      return true if detect_linux_via_lsb
      # in all other cases we failed the detection
      @platform[:family] = 'unknown'
    end

    def fetch_os_release
      data = get_config('/etc/os-release')
      return if data.nil?

      os_info = parse_os_release_info(data)
      cisco_info_file = os_info['CISCO_RELEASE_INFO']
      if cisco_info_file
        os_info.merge!(parse_os_release_info(get_config(cisco_info_file)))
      end

      os_info
    end

    def parse_os_release_info(raw)
      return {} if raw.nil?

      raw.lines.each_with_object({}) do |line, memo|
        line.strip!
        key, value = line.split('=', 2)
        memo[key] = value.gsub(/\A"|"\Z/, '') unless value.empty?
      end
    end
  end
end
