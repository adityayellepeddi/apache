package 'httpd' do

   action :install 

end



service 'httpd' do

    action [:enable, :start]

end

file  '/var/www/html/index.html' do

     content "<h1>Details of this machine </h1>
     <h2>HOSTNAME: #{node['hostname']}</h2>
     <h3>IPADDRESS: #{node['ipaddress']}</h3>
     <h3>CPU:#{node['cpu']['0']['mhz']}</h3>
     <h4>MEMORY:#{node['memory']['total']}</h4>
"

end 

 
