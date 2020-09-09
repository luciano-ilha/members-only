# frozen_string_literal: true

module PostsHelper
  def user_check(post, _user)
    post.user.name if user_signed_in?
  end
end
