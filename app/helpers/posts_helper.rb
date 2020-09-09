module PostsHelper
  def user_check(post, _user)
    post.user.name if user_signed_in?
  end

  def new_post_btn
    if user_signed_in?
      link_to 'New Post', new_post_path 
    end
  end

  def edit_btn(post)
    if user_signed_in?
      link_to 'Edit',edit_post_path(post) 
    end
  end

  def delete_btn(post)
    if user_signed_in?
      link_to 'Delete',post, method: :delete, data: {confirm: "Are you sure you want to delete this post?"}
    end
   
  end
end
