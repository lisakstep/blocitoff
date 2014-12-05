class WelcomeController < ApplicationController
  def index
    if current_user
      list_path current_user.list
    else
      root_path
    end
  end

  def about
  end
end
