package 'httpd' do

   action :install 

end



service 'httpd' do

    action [:enable, :start]

end

file  '/var/www/html/index.html' do

     content "Details of this machine/
     HOSTNAME: #{node['hostname']}/
     IPADDRESS: #{node['ipaddress']}/
     CPU:#{node['cpu']['0']['mhz']}/
     MEMORY:#{node['memory']['total']}
"

end 

 
