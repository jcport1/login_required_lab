class SessionsController < ApplicationController

    #you need a sessions controller to handle login/loggout requests
    #in order to set the secret show page which will need a different url hence a new controller 

    def new 

    end

    def create

        #when logging in via the form - i.e this is the post request from the login view
        #you need to check for params to see if you're logged in - if so show home page
        #otherwise redirect to login page

        if !params[:name] || params[:name].empty? 

            redirect_to '/login'

        else 
            session[:name] = params[:name]
            redirect_to '/' 
            
    end
end 

    def destroy 

        #you want to destory & then redirect 
        session.delete :name 
        redirect_to '/'
    end

end