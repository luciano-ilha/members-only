module PostsHelper
  def user_check(post, _user)
    post.user.name if user_signed_in?
  end

  def new_post_btn
    return link_to 'New Post', new_post_path if user_signed_in?
  end

  def edit_btn(post)
    return link_to 'Edit', edit_post_path(post) if user_signed_in?
  end

  def delete_btn(post)
    return link_to 'Delete', post, method: :delete, data: {confirm: 'Are you sure you want to delete this post?'} if user_signed_in?
  end
end
