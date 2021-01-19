class SessionsController < ActionController::Base
  def new

  end

  def create
    if params[:username].present? && !params[:username].empty?
      session[:username] = params[:username]
      redirect_to '/'
    else
      render :new
    end
  end

  

  def destroy
    session.delete :username
    redirect_to '/login'
  end

end
