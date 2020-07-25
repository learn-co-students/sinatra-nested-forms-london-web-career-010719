require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :intro
    end

    get '/new' do
      # navigating erb files within directories is relative to the views directory
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_details|
        Ship.new(ship_details)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
