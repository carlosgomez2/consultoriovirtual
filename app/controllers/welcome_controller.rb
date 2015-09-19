class WelcomeController < ApplicationController
  
  def homepage
  	if user_signed_in?
  		redirect_to start_index_path
  	else
  		render layout: "homepage" 
  	end
  end

end
