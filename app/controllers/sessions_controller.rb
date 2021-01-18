class SessionsController < ApplicationController

    #you need a sessions controller to handle login/loggout requests
    #in order to set the secret show page which will need a different url hence a new controller 

    def new 

    end

    def create

        if !params[:name] || params[:name].empty? 

            redirect_to '/login'

        else 
            session[:name] = params[:name]
            redirect_to '/' 
            
    end
end 

    def destroy 
        session.delete :name 
        redirect_to '/'
    end

end