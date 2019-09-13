class ApplicationController < ActionController::Base
	# before_action :configure_permitted_parameters, if: :devise_controller?
	def after_sign_in_path_for(resource)
		admin_path
	end
	def after_sign_out_path_for(resource)
		root_path
	end

	protected
	    def authenticate_user!
	      if user_signed_in?
	        super
	      else
	        redirect_to root_path
	        ## if you want render 404 page
	        ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
	      end
	    end
end
