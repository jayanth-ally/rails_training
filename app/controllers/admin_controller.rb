class AdminController < ApplicationController
  def login
    if request.post? 
      if params[:user_name] == "admin" && params[:password]=="admin"
        session[:admin] = "admin"
        flash[:notice] = "Welcome Admin"
        redirect_to :controller=>:gallery
      else
        flash[:notice] = "Invalid username / password"
        redirect_to :action=>:login
      end
    end
  end

  def logout
    session[:admin] = nil
    flash[:notice] = "You are logged out"
    redirect_to :action => :login
  end
end
