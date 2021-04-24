class SneakerController < ApplicationController

   get '/collection' do
      @user = User.find_by_id(session[:user_id])
      @sneakers = current_user.sneaker
      erb :'collection/collection'
  end
 
   get '/collection/new' do
      if current_user
         erb :'/collection/new'
      else
         redirect to '/login'
      end
   end

   post '/collection' do
      @sneaker = current_user.sneaker.create(brand: params[:brand], name: params[:name], colorway: params[:colorway], purchase_date: params[:purchase_date], price: params[:price])
      redirect to "/collection/#{@sneaker.id}"
   end

   get '/collection/:id' do
      if current_user
         @sneaker = Sneaker.find_by_id(params[:id])
         erb :'/collection/show'
      else
         redirect to '/failure'
      end
   end

   get '/collection/:id/edit' do
         @sneaker = Sneaker.find_by_id(params[:id])
         erb :'/collection/edit'
   end

   patch '/collection/:id' do
      @sneaker = Sneaker.find_by_id(params[:id])
      @sneaker.brand = params[:brand]
      @sneaker.name = params[:name]
      @sneaker.colorway = params[:colorway]
      @sneaker.purchase_date = params[:purchase_date]
      @sneaker.price = params[:price]
      @sneaker.save
      redirect to "/collection/#{@sneaker.id}"
   end

   delete '/collection/:id' do
      @sneaker = Sneaker.find_by_id(params[:id])
      @sneaker.delete
      redirect to '/collection'
   end


end

