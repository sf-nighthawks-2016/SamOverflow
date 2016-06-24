get '/posts/new' do
	erb :new
end


post '/posts' do
	 @deck = Post.create(title: params[:title], comment: params[:comment])
	 redirect '/' 
end