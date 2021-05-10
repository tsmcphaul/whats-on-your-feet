class UsersController < ApplicationController

    get '/signup' do
        erb :'/user/signup'
    end

    post '/signup' do
        if params[:username]=="" || params[:password]==""
            redirect to '/signup' 
        else
            @user = User.new(username: params[:username], password: params[:password])
            @user.save
            session[:user_id] = @user.id
            redirect to '/login'
        end
    end

    get '/login' do
        erb :'/user/login'
    end

    post '/login' do
        @user = User.find_by(:username => params[:username])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect '/collection'
		  else
			redirect '/failure'
		  end
    end

    get '/logout' do
        session.clear
        redirect '/'
      end

    get '/failure' do
        erb :'/user/failure'
    end


end
