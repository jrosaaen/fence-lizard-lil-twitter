def logged_in?
  session[:id] != nil
end

def password_match?(params)
  params[:password] == params[:password_conf]
end