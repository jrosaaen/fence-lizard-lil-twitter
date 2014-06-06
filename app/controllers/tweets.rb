post '/tweet/create' do
  @user = User.find(session[:id])
  @user.tweets << Tweet.create(content: params[:tweet_content])
  redirect "/user/dashboard/#{session[:id]}"
end

# get '/tweet/:id/delete' do
#   Tweet.destroy(params[:id])
#   redirect "/user/dashboard/#{session[:id]}"
# end

delete '/tweet/:id' do
  Tweet.destroy(params[:id])
  redirect "/user/dashboard/#{session[:id]}"
end

