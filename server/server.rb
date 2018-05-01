require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader' if development?

set :bind, '0.0.0.0'
set :port, 9092
set :public_folder, 'public'
set :json_encoder, :to_json

get '/api/v2/articles' do
    json :id => "11", :data => {:title => 'bar', :body => "test"}
end

not_found do
    status 200
    json :error => {:code => "200", :message => "error"}
end