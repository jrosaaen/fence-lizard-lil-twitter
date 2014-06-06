get '/' do
  if !logged_in?
    @tweets = Tweet.all
    erb :index
  else
    redirect "/user/dashboard/#{session[:id]}"
  end
  # Look in app/views/index.erb
end


