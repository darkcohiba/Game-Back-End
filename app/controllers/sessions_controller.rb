class SessionsController < ApplicationController
    before_action :authorize_user, except: [:login]

    def login
        user = User.find_by(name:params[:username])
        
        if user&.authenticate(params[:password])

            # session[:current_user] => nil
            session[:current_user] = user.id
            session[:login_attempts] = 0
            render json: user, status: :ok
        else
            # - Set Session's 'login_attempts' to 0 if Undefined / Falsey
            session[:login_attempts] ||= 0
            session[:login_attempts] += 1
            render json: { error: "Invalid Password and/or Username" },  status: :unauthorized
        end
    end 

    def logout
        session.delete :current_user
    end 
end
