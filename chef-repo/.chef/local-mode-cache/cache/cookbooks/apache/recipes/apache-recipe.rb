#
# Cookbook:: apache
# Recipe:: apache-recipe
#
# Copyright:: 2023, The Authors, All Rights Reserved.
#
apt_update 'update' do
  action :update
end



# Install Apache2 package
package 'apache2' do
  action :install
end



# Start and enable Apache2 service
service 'apache2' do
  action [:start, :enable]
end
