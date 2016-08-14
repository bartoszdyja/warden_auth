module WardenHelper
  extend ActiveSupport::Concern

  included do
    before_action :authenticate!
  end

  def warden_logout
    warden.logout
  end

  def current_user
    warden.user
  end

  def warden
    request.env['warden']
  end

  def authenticate!
    warden.authenticate!
  end
end
