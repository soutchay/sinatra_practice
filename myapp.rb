require 'sinatra'

get '/' do 
	#the HTML
	"<a href='/form'>Fill out the form</a>"
end

get "/form" do
	"<form action='/form' method='post'>
		<input type='text' name='the_data'>
		<input type='submit'>
	</form>"
end

post "/form" do
	"You submitted #{params[:the_data].inspect}"
end