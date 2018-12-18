class HomePageController < ApplicationController

  def home
    if user_signed_in?
      redirect_to employees_path
    else
      redirect_to users_path
    end
  end
end
