class SneakerController < ApplicationController

   get '/collection' do
      @user = User.find(session[:user_id])
      @sneakers = Sneaker.all
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
      @sneaker = Sneaker.create(brand: params[:brand], name: params[:name], colorway: params[:colorway], purchase_date: params[:purchase_date], price: params[:price])
      redirect to "/collection/#{@sneaker.id}"
   end

   get '/collection/:id' do
      @sneaker = Sneaker.find(params[:id])
      erb :'/collection/show'
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
      @sneaker.purchase_date = params[:colorway]
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

