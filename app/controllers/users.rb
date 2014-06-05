get "/user/dashboard/:id" do
  @user = User.find(params[:id])
  @tweets = @user.tweets
  erb :dashboard
end

post "/user/logout" do
  session[:id] = nil
  redirect '/'
end

get "/user/login" do
  erb :login
end

post "/user/login" do
  if user_login_password_match?(params)
    session[:id] = User.find_by(username: params[:username]).id
    redirect "/user/dashboard/#{session[:id]}"
  else
    redirect '/user/login'
  end
end

get "/user/create" do
  erb :create_account
end

post "/user/create" do
  if password_match?(params)
    @user = User.create(username: params[:username], password: params[:password])
    session[:id] = @user.id
    redirect "/user/dashboard/#{session[:id]}"
  else
    redirect '/user/create'
  end
end