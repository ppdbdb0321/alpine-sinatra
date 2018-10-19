require 'sinatra'
require 'sinatra/reloader'
require 'pp'
require 'open-uri'
require 'json'
require 'net/http'
require 'uri'
require 'active_support/all'
require 'kconv'

set :bind, "0.0.0.0"
set :port, 4567

get '/' do

  p "HW"

end