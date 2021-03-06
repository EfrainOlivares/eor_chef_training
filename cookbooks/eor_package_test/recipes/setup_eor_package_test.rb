#
# Cookbook Name:: eor_package_test
# Recipe:: setup_eor_package_test
#
# Copyright 2012, RightScale <efraub@rightscale.com> 
#
# All rights reserved - Do Not Redistribute
#

package_name = value_for_platform(
"centos" => {"default" => "httpd"},
"ubuntu" => {"default" => "apache2"}
)

rs_utils_marker :begin

log "We would have installed #{package_name} if we provided that variable to a package provider"

log "We are now in recipe eor_packate_test, a bout to use ::Chef::Log info and warn methods"

ruby_block "Show Chef log messages inline" do
  block do #note second block do needed
  ::Chef::Log.info("info message")
  ::Chef::Log.warn("warn message")
  ::Chef::Log.debug("debug message")
  end
end


log "now we're calling package tmux"
package "tmux"

if node[:platform] == 'centos'
    log "This is a centos box"
  elsif node[:platform] == 'ubuntu'
    log "This is an ubuntu box"
end

log "This is the value for eor_attrib (#{node[:eor_attrib]})"

log "See the content of node[:platform] is #{node[:platform]}"

log "The value with a forward slash in the atttribute name is (#{node[:eor_package_test][:someval]})"


rs_utils_marker :end
