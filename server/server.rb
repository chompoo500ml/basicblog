require 'sinatra'

set :bind, '0.0.0.0'
set :port, 9092
set :public_folder, 'public'

get '/' do
  'Hello world!'
end
