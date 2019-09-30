#
# Cookbook:: ssh
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'sshd'

service 'sshd' do
  action [:enable, :start]
end

file '/etc/ssh/ssh_config' do # ~FC033
  PasswordAuthentication no
end
user 'vagrant' do
  password 'vagrant'
end
