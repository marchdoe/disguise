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
  
  get '/reset' do
    mustache :reset
  end
  
  get '/grid' do
    mustache :grid
  end
  
  get '/typography' do
    mustache :typography
  end
  
  get '/forms' do
    mustache :forms
  end
  
  get '/buttons' do
    mustache :buttons
  end
  
  get '/modules' do
    mustache :modules
  end
  
  get '/base' do
    mustache :base
  end

end
