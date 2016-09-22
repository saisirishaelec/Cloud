# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "saisirisha"
client_key               "/opt/chefdk/.chef/saisirisha.pem"
chef_server_url          "https://api.chef.io/organizations/devops31"
cookbook_path            ["/opt/chefdk/cookbooks"]
