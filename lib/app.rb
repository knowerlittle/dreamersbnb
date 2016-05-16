ENV['RACK_ENV'] = 'development'

require 'sinatra/base'

class MakersBNB < Sinatra::Base
  get '/' do
    'Hello MakersBNB!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
