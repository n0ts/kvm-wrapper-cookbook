#
# Cookbook Name:: kvm-wrapper
# Recipe:: host
#
# Copyright 2014, Naoya Nakazawa
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'kvm::host'
include_recipe 'kvm::host-tuning'

case node[:platform_family]
when 'rhel'
  template '/usr/bin/ksm.sh' do
    mode 755
    source 'ksm.sh.erb'
    action :create
    notifies :run, 'execute[ksm]'
  end

  execute 'ksm' do
    command "/usr/bin/ksm.sh -d > /dev/null"
    action :nothing
  end

  %w{ kmod-kvm koan }.each do |pkg|
    package pkg do
      action :install
    end
  end
end
