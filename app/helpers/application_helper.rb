# frozen_string_literal: true

module ApplicationHelper
  def app_user_check(_post, _user, current_user)
    if user_signed_in?
      puts current_user
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      link_to 'Login', new_user_session_path
    end
  end
end
