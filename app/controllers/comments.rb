post '/comments/:id' do
   @comment = Comment.create(user_id: session[:user_id], content: params[:content], commentable_id: params[:id], commentable_type: "Post")
   redirect "/posts/#{params[:id]}"
end
