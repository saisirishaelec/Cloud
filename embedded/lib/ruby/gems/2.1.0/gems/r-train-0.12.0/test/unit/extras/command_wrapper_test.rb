# encoding: utf-8
# author: Dominik Richter
# author: Christoph Hartmann

require 'helper'
require 'train/transports/mock'
require 'train/extras'
require 'base64'

describe 'linux command' do
  let(:cls) { Train::Extras::LinuxCommand }
  let(:cmd) { rand.to_s }
  let(:backend) {
    backend = Train::Transports::Mock.new.connection
    backend.mock_os({ family: 'linux' })
    backend
  }

  it 'wraps commands in sudo' do
    lc = cls.new(backend, { sudo: true })
    lc.run(cmd).must_equal "sudo #{cmd}"
  end

  it 'doesnt wrap commands in sudo if user == root' do
    lc = cls.new(backend, { sudo: true, user: 'root' })
    lc.run(cmd).must_equal cmd
  end

  it 'wraps commands in sudo with all options' do
    opts = rand.to_s
    lc = cls.new(backend, { sudo: true, sudo_options: opts })
    lc.run(cmd).must_equal "sudo #{opts} #{cmd}"
  end

  it 'runs commands in sudo with password' do
    pw = rand.to_s
    lc = cls.new(backend, { sudo: true, sudo_password: pw })
    bpw = Base64.strict_encode64(pw + "\n")
    lc.run(cmd).must_equal "echo #{bpw} | base64 -d | sudo -S #{cmd}"
  end

  it 'wraps commands in sudo_command instead of sudo' do
    sudo_command = rand.to_s
    lc = cls.new(backend, { sudo: true, sudo_command: sudo_command })
    lc.run(cmd).must_equal "#{sudo_command} #{cmd}"
  end

  it 'wraps commands in sudo_command with all options' do
    opts = rand.to_s
    sudo_command = rand.to_s
    lc = cls.new(backend, { sudo: true, sudo_command: sudo_command, sudo_options: opts })
    lc.run(cmd).must_equal "#{sudo_command} #{opts} #{cmd}"
  end

  it 'runs commands in sudo_command with password' do
    pw = rand.to_s
    sudo_command = rand.to_s
    lc = cls.new(backend, { sudo: true, sudo_command: sudo_command, sudo_password: pw })
    bpw = Base64.strict_encode64(pw + "\n")
    lc.run(cmd).must_equal "echo #{bpw} | base64 -d | #{sudo_command} -S #{cmd}"
  end
end

describe 'powershell command' do
  let(:cls) { Train::Extras::PowerShellCommand }
  let(:cmd) { rand.to_s }
  let(:backend) {
    backend = Train::Transports::Mock.new.connection
    backend.mock_os({ family: 'windows' })
    backend
  }

  it 'wraps commands in powershell' do
    lc = cls.new(backend, {})
    tmp =
    lc.run(cmd).must_equal "powershell -encodedCommand #{WinRM::PowershellScript.new('$ProgressPreference=\'SilentlyContinue\';' + cmd).encoded}"
  end
end
