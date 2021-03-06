class SecretsController < ApplicationController
  #before_action :require_login


  def show
    if !current_user
      redirect_to(controller: 'sessions', action: 'new')
    end
  end


  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
