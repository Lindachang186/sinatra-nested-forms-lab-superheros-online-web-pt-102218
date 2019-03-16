require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      binding.pry
      erb :super_hero
    end

      post '/team' do
        @team = params[:team]
        @members = params[:team][:heroes]
        erb :super_hero
      end

end
