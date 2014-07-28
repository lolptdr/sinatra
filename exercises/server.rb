require 'sinatra'
require 'rubygems'
require 'pry-byebug'

set :bind, '0.0.0.0' # This is needed for Vagrant

get '/welcome/:name' do
  erb :welcome
end

get '/say/*/to/*' do
  puts params
  erb :say
end

# combine GET and POST verbs for '/test'
get '/test' do
	erb :test
end

post '/test' do
	puts params
	@name = params[:name]
	@email = params[:mail]
	@vegetarian = params[:vegetarian]
	@blood_type = params[:bloodtype]	
	erb :test
end

get '/dog-registration' do
	erb :dog_registration
end


get '/dog-registration-results' do
	@name = params[:name]
	@email = params[:mail]
	@vegetarian = params[:vegetarian]
	@blood_type = params[:bloodtype]	
	erb :dog_results
end