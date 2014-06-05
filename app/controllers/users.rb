get "/user/dashboard/:id" do
  @user = User.find(params[:id])
  erb :dashboard
end

post "/user/logout" do
  session[:id] = nil
  redirect '/'
end

get "/user/login" do
  erb :login
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