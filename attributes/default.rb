#
# Cookbook Name:: kvm-wrapper
# Recipe:: defualt
#
# Copyright 2014, Naoya Nakazawa
#
# All rights reserved - Do Not Redistribute
#

default['kvm-wrapper'] = {
  'ksm_sleep' => '-10000',
  'macrefresh' => {
    'iface' => 'eth0',
    'interval' =>  10,
  },
}
