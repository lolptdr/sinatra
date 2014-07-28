# require_relative "../views/dog_registration.erb"
# require_relative '../views/dog_results.erb'
# require_relative '../views/say.erb'
# require_relative '../views/test.erb'
# require_relative '../views/welcome.erb'
require 'rack/test'


require_relative '../server.rb'

ENV['RACK_ENV'] = 'test'

module RSpecMixin
	include Rack::Test::Methods
	def app() Sinatra::Application
	end
end

RSpec.configure { |c| c.include RSpecMixin }