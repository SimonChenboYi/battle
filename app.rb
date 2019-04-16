

require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "infrastructure working!"
  end

  run! if app_file == $0
end
