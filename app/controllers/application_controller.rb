require './config/environment'
require './app/models/tweet'
# classes are app factories that produce a new instance of the app

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    Tweet.new("@trashante", "this class makes me sleepy")
    Tweet.new("@blackbear", "wow")
    Tweet.new("@jai", "i love ivana and ashante")
    @tweets = Tweet.all
    erb :index
  end

end