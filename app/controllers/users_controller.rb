class UsersController < ApplicationController
	def show
	users = User.find(params[:id])
		if @users
		render action: :show
		end
	end
end
