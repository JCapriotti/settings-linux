# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jcapriotti"
client_key               "#{current_dir}/jcapriotti.pem"
validation_client_name   "intplat-validator"
validation_key           "#{current_dir}/intplat-validator.pem"
chef_server_url          "https://10.1.141.137/organizations/intplat"
cookbook_path            ["#{current_dir}/../cookbooks"]
bootstrap_install_command  "curl -O http://172.25.106.11/devbox/chef-12.6.0-1.el6.x86_64.rpm; rpm -Uvh chef-12.6.0-1.el6.x86_64.rpm"
