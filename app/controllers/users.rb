get "/users/:id" do
  @user = current_user
  @posts = @user.posts
  # @answers = @posts.answers
  erb :"/users/show"
end
