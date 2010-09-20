# application.rb
require 'rubygems'
require 'sinatra'
require 'pony'

get '/' do
    erb :index
end

post '/contact' do
  Pony.mail :to => 'YOUR EMAIL ADDRESS',
            :from => 'SERVER EMAIL ADDRESS',
            :subject => 'Contact from site',
            :body => "Inform the following email address when we are are launched:\n\n#{params[:email]}" 
 redirect '/?thank_you=true' 
end
