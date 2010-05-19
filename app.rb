require 'sinatra/base'
require 'mustache/sinatra'
require 'rack' 


# Reload scripts and reset routes on change 
class Sinatra::Reloader < Rack::Reloader 
  def safe_load(file, mtime, stderr = $stderr) 
    if file == Sinatra::Application.app_file 
      ::Sinatra::Application.reset! 
      stderr.puts "#{self.class}: reseting routes" 
    end 
    super 
  end 
end

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
  
  get '/about' do
    mustache :about
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
  
  get '/application' do
    mustache :application
  end
  
  get '/button-demo' do
    mustache :buttondemo
  end
  
  get '/module-demo' do
    mustache :moduledemo
  end

end
