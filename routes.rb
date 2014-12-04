require 'sinatra'

def username_for(firstname, lastname, middlename='')
	firstname[0] + (middlename[0]||='') + lastname[0,5]
end

get '/' do
	erb :home_page #tells Sinatra to render views/home_page.erb
end

post '/cart' do
	#each time someone makes an HTTP request, get new Sinatra object to handle request
	#so if we use instance variables then they will be available everywhere, including inside views
	@cart_items = params[:cart_items].split
	erb :cart
end

get "/:lastname/:firstname" do
    firstname = params[:firstname]
    lastname = params[:lastname]
    username = username_for(firstname, lastname).downcase
    "#{firstname} #{lastname}'s username is #{username}"
end

get '/:lastname/:firstname/:middlename' do
    firstname = params[:firstname]
    lastname = params[:lastname]
    middlename = params[:middlename]
    username = username_for(firstname, middlename, lastname).downcase
    "#{firstname} #{middlename} #{lastname}'s username is #{username}"
	"Alfonso D Rush's username is adrush"
end
