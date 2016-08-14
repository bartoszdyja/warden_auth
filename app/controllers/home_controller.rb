class HomeController < ApplicationController
  def index
    render text: "Logged in: #{current_user}"
  end

  def logout
    warden_logout
    render text: 'Logged out'
  end
end
