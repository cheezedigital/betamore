class Admin::LoginsController < ApplicationController

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Welcome back!"
			redirect_to admin_products_path
		else
			flash.now[:danger] = "Log in failed! Oh noe!"
			render 'new'
		end
	end

end
