get '/posts/new' do
	erb :'posts/new'
end


post '/posts' do
	 p params
	 @post = Post.create(user_id: session[:user_id], title: params[:title], content: params[:content])
	 p @post
	 redirect '/' 
end