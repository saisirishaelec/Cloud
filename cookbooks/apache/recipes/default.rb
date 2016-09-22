#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
package "httpd" do
action :install
end

#template "<%=node[fie_path]%>" do
#source "index.html.erb"
#end

service "httpd" do
action :restart
end

ENV['MESSAGE']='hello chef!'
execute 'print environment variable $MESSAGE' do
command 'echo $MESSAGE>>/tmp/test'
end

hook=data_bag_item('hooks','request_bin')
http_request "call back" do
url hook['url']
end
