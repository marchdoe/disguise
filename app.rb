require 'sinatra/base'
require 'mustache/sinatra'

class App < Sinatra::Base
  register Mustache::Sinatra
  require 'views/layout'
  set :public, "public"
  set :mustache, {
    :views     => 'views/',
    :templates => 'templates/'
  }

  get '/' do
    @title = "Toupee + Mustache = Disguise"
    mustache :index
  end

  get '/other' do
    mustache :other
  end

end
