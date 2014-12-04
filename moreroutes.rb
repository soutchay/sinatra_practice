require 'sinatra'

get '/hello/:first_name' do
	"Hello, #{params[:first_name]}, glad ou could join us."
end