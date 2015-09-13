# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "kalapriya_kannan"
client_key               "#{current_dir}/kalapriya_kannan.pem"
validation_client_name   "hewlett-validator"
validation_key           "#{current_dir}/hewlett-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/hewlett"
cookbook_path            ["#{current_dir}/../cookbooks"]
