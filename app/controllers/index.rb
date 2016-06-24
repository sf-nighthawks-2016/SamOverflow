get '/' do
	@posts = Post.all
	erb :index
end