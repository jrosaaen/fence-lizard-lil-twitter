post '/tweet/create' do
  @user = User.find(session[:id])
  @user.tweets << Tweet.create(content: params[:tweet_content])
  redirect "/user/dashboard/#{session[:id]}"
end
