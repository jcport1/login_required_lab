class SecretsController < ApplicationController

    #only show this page if user is logged in
    #do so using a before action & helper method

    before_action :require_logged_in 


#this action is only displaying the show html erb view 
    def show 

        
    end

    private 

    def require_logged_in
      redirect_to '/login' unless current_user
    end

end