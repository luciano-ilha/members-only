module ApplicationHelper
  def app_user_check
    if user_signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      link_to 'Login', new_user_session_path
    end
  end

  def status_check
    return link_to 'Sign up', new_user_registration_path unless user_signed_in?
  end
end
