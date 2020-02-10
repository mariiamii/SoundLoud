class ApplicationController < ActionController::Base
    
    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        end 
    end

    def user_logged_in?
        current_user
    end
    
    def user_authorized 
        redirect_to "/login" unless user_logged_in? 
    end
end

    #def current_artist
       # if session[:artist_id]
      #      User.find(session[:artist_id])
     #   end 
    #end

    #def artist_logged_in?
     #   session[:artist_id]
    #end
    
    #def authorized 
    #    unless artist_logged_in? redirect_to "/signup"
   # end

