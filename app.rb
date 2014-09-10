require 'bundler'
Bundler.require
require 'sinatra/reloader' if development? || test?

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # Home page.
  get '/' do
    slim :index
  end
end
