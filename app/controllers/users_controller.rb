class UsersController < ApplicationController
	def index
	end

	def show
		@user = User.find(params[:id])
 	end

 	def create
 	end

	def update
	end

	def edit
	end

	private
	def user_params
		params.require(:user).permit(:email, :password)
	end
end
