#
# Cookbook Name:: awesome_customers
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#group 'bawarchi'

#	user 'bawarchi' do
 # 	  home '/home/bawarchi'
  #	  group 'bawarchi'
  #	  shell '/bin/bash'
#	end
group 'lemon'

	user 'lemon' do
  	  home '/home/lemon'
  	  group 'lemon'
  	  shell '/bin/bash'
	end

package 'httpd' do
	  action :install
	end
	


	service 'httpd' do
  	  action [:enable, :start]
	end


file '/var/www/html/index.html' do
  	  content '<html>
  	  <body>
    	    <h1>Food is ready!!!</h1>
 	  </body>
        	  </html>'
	  end

service 'iptables' do
  	  action :stop
	end

directory '/var/www/html/lemon/' do
  owner 'lemon'
  group 'lemon'
  mode '0755'
  action :create
end


directory '/var/www/html/lemon/meals' do
  owner 'lemon'
  group 'lemon'
  mode '0755'
  action :create
end

directory '/var/www/html/lemon/tiffins' do
  owner 'lemon'
  group 'lemon'
  mode '0755'
  action :create
end

remote_file '/var/www/html/lemon/meals/biryani.txt' do
  source 'https://s3-us-west-2.amazonaws.com/https://s3-us-west-2.amazonaws.com/lemon2-bucket/meals/biryani.txt'
  owner 'lemon'
  group 'lemon'
  mode '0755'
  action :create
end


remote_file '/var/www/html/bawarchi/tiffins/dosa.txt' do
  source 'https://s3-us-west-2.amazonaws.com/https://s3-us-west-2.amazonaws.com/lemon2-bucket/tiffins/dosa.txt'
  owner 'lemon'
  group 'lemon'
  mode '0755'
  action :create
end
