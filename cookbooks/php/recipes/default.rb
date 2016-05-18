#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package ['php5','libapache2-mod-php5','php5-mcrypt','mcrypt','php5-gd','mysql-server','php5-mysql']  do
  action :install
end
