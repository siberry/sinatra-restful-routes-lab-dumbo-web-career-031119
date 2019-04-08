require 'pry'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

<<<<<<< HEAD
  # code actions here!
  get '/recipes' do
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find(params[:id])
    erb :edit
  end

  post '/recipes' do
    @recipe = Recipe.create(params)
    redirect "/recipes/#{@recipe.id}"
  end

  patch '/recipes/:id' do
       # binding.pry
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipe])
    redirect "/recipes/#{params[:id]}"
    # render :show
  end

  delete '/recipes/:id' do
    Recipe.destroy(params[:id])
    redirect to "/recipes/"
  end
=======
  get '/recipes' do
    erb :index
  end
  
  get '/recipes/:id' do
    @recipe = Recipe.find(:id)
    erb :show
  end
>>>>>>> 0348e9cbaab674662f4012bfb111818eafbefeae

end
