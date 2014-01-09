#
# Cookbook Name:: flapjack
# Recipe:: default
#
# Copyright 2014, Adam Ashley
#
# All rights reserved - Do Not Redistribute
#

# FIXME: Hack taken from the flapjack puppet manifest, the flapjack packages
# are not signed yet so we tell apt to install unauthenticated packages.
# This is bad as soon as the packages are signed this will go away.
file "/etc/apt/apt.conf.d/99auth" do
    owner "root"
    group "root"
    mode "0644"
    content "APT::Get::AllowUnauthenticated yes;"
end

apt_repository "flapjack" do
    uri node['flapjack']['repo']['uri']
    distribution node['lsb']['codename']
    components [ "main" ]
end

node['flapjack']['packages'].each do |pkg|
    package pkg do
        action :install
    end
end

logrotate_app "flapjack" do
    cookbook "logrotate"
    path ["/var/log/flapjack/*.log", "/var/log/flapjack/*.output"]
    frequency "weekly"
    rotate 5
end
