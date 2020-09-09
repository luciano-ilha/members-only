module PostsHelper
  def user_check(post, _user)
    post.user.name if user_signed_in?
  end

  def new_post_btn
    if user_signed_in?
      link_to 'New Post', new_post_path 
    end
  end
end
