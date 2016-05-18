#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package ['mysql-server','libapache2-mod-auth-mysql','php5-mysql']  do
  action :install
end

execute "sudo mysql_install_db" do
  command "sudo mysql_install_db"
end
