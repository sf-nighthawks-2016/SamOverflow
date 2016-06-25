get '/posts/new' do
	erb :'posts/new'
end


post '/posts' do
	 @post = Post.create(user_id: session[:user_id], title: params[:title], content: params[:content])
	 redirect '/'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :"/posts/show"
end
