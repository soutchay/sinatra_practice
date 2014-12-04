require 'sinatra'

get '/' do
	erb :home_page #tells Sinatra to render views/home_page.erb
end

post '/cart' do
	#each time someone makes an HTTP request, get new Sinatra object to handle request
	#so if we use instance variables then they will be available everywhere, including inside views
	@cart_items = params[:cart_items].split
	erb :cart
end

get '/:lastname/:firstname' do
	"Alfonso Rush's username is arush"
end