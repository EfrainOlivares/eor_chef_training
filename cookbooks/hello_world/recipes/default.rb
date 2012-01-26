#
# Cookbook Name:: hello_world
# Recipe:: default
#
# Copyright 2012, RightScale <efrain@rightscale.com> 
#
# All rights reserved - Do Not Redistribute
#

log "Hello World! modified 2:44pm"
log "This is the git controlled version, adding to verify loop, package is a directory"

directory "/tmp/something" do
  owner "root"
  group "root"
  mode 0755
  path "/tmp/somethingelse"
  action :create
end

