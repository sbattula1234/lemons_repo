# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "admin_lemon"
client_key               "#{current_dir}/admin_lemon.pem"
validation_client_name   "lemon_org-validator"
validation_key           "#{current_dir}/lemon_org-validator.pem"
chef_server_url          "https://ec2-52-34-26-193.us-west-2.compute.amazonaws.com/organizations/lemon_org"
cookbook_path            ["#{current_dir}/../cookbooks"]
