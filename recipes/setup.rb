#
# Cookbook Name:: opsworks-resque-scheduler
# Recipe:: default
#
# Copyright (C) 2014 PEDRO AXELRUD
#
# All rights reserved - Do Not Redistribute
#
node[:deploy].each do |application, deploy|
  template "/etc/init/resque-scheduler-#{application}.conf" do
    source "resque-scheduler.conf.erb"
    mode "0755"
    variables application: application, deploy: deploy
  end
end