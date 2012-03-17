get '/admin/home' do
  admin_required
  
  erb :'admin/home', :layout => :'layout'
end

get '/admin' do
  admin_required
  
  redirect '/admin/dashboard', 303
end

require_relative 'admin/users'
