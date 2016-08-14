class BasicAuthStrategy < ::Warden::Strategies::Base
  def valid?
    username && password
  end

  def authenticate!
    user = User.find_by_username(username)
    if user && user.password == password
      success!(user)
    else
      fail!('strategies.basic_auth.failed')
    end
  end

  private

  def username
    params['username']
  end

  def password
    params['password']
  end
end
