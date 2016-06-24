helpers do
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def format_time(post)
    now = DateTime.now
    formatted_time = now.strftime("%H").to_i - post.created_at.strftime("%H").to_i
    # return formatted_time.to_i
    return formatted_time * -1
  end
end
