require 'pry'
class SessionsController < ApplicationController

  def new

  end

  def create
    # binding.pry
    # puts "done"
    if params[:name].nil? || params[:name].empty?
      redirect_to(controller: 'sessions', action: 'new')
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
    redirect_to(controller: 'application', action: 'hello')
  end




end
