require './environment'

module FormsLab
  class App < Sinatra::Base

      get '/new' do 
        erb :'pirates/new'
      end 


      post '/pirates' do
        @pirate = Pirate.new(params[:pirate])
      

      binding.pry
      

        @ship1 = Ship.new(params[:pirate][:ships][0])
        @ship2 = Ship.new(params[:pirate][:ships][1])
        
        erb :'pirates/show'
      end 

  end
end
