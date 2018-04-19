package 'httpd' do
   action :install 
end



service 'httpd' do
    action [:enable, :start]
end

remote_file '/var/www/html/splash.png' do
     source 'https://www.pngarts.com/files/1/Water-Splash-PNG-Download-Image.png'
end


template '/var/www/html/index.html' do
     source 'index.html.erb'
end








# for static file
#cookbook_file '/var/www/html/index.html' do
#   source 'index.html'
#end




#for dynamic file
#template  '/var/www/html/index.html' do
#        source 'index.html.erb'
#end 

 
