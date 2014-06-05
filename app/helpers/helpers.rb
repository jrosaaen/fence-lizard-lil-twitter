def logged_in?
  session[:id] != nil
end

def password_match?(params)
  params[:password] == params[:password_conf]
end

def user_login_password_match?(params)
  params[:password] == User.find_by(username: params[:username]).password
end