#
# Cookbook Name:: kvm-wrapper
# Recipe:: host-tuning
#
# Copyright 2014, Naoya Nakazawa
#
# All rights reserved - Do Not Redistribute
#

default['kvm-wrapper']['host-tuning'] = {
  'ksm-sleep' => '-10000',
}
