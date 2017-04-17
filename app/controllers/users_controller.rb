class UsersController < ApplicationController

	def new
	end

	def create
		@user = User.new(user_params)
		redirect_to '/users/new' unless @user.save
		session[:user_id] = @user.id
		redirect_to "/users/#{@user.id}"
	end

	def show
		@user = User.find(session[:user_id])
	end

	private

	def user_params
		params.require(:user).permit(:username, :password)
	end

end