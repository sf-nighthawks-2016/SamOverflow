get '/' do
	@posts = Post.all
	erb :index
end

post '/posts/:id' do
  post = Post.find(params[:id])
  user = User.find(1)
  vote = Vote.create({user_id: user.id, voteable_id: post.id, voteable_type: "Post"})

  if request.xhr?
    content_type :json
    {points: post.votes.count}.to_json
  else
    redirect '/'
  end
end
