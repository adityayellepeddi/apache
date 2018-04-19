package 'httpd' do
   action :install 
end



service 'httpd' do
    action [:enable, :start]
end



cookbook_file '/var/www/html/index.html' do
   source 'index.html'
end




#template  '/var/www/html/index.html' do
#        source 'index.html.erb'
#end 

 
