#
# Cookbook Name:: opsworks-resque-scheduler
# Recipe:: default
#
# Copyright (C) 2014 PEDRO AXELRUD
#
# All rights reserved - Do Not Redistribute
#
node[:deploy].each do |application, deploy|
  settings = ((node[:resque] || {})[application] || {})
  rack_env = deploy[:rails_env] || settings[:rack_env] || settings[:rails_env] 
  template "/etc/init/resque-scheduler-#{application}.conf" do
    source "resque-scheduler.conf.erb"
    mode '0644'
    variables application: application, deploy: deploy, rack_env: rack_env
  end
end