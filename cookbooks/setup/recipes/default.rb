#
# Cookbook Name:: setup
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# execute "rm_html" do
#   command "rm -rf /var/www/html"
# end
#
# execute "link" do
#   command "ln -s /vagrant/public /var/www/html"
# end
#
# execute "storage" do
#   command "chmod -R 777 /vagrant/storage"
# end
#
# execute "bootstrap cache" do
#   command "chmod -R 777 /vagrant/bootstrap/cache"
# end

execute "composer install" do
  command "composer install --working-dir=vagrant/celfieTheSalon"
end

execute "cp env" do
  command "cp /vagrant/celfieTheSalon/.env.example /vagrant/celfieTheSalon/.env"
end

execute "key gen" do
  command "php /vagrant/celfieTheSalon/artisan key:gen"
end
