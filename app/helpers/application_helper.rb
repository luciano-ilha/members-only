module ApplicationHelper
  def app_user_check
    if user_signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete, class: 'navbar-item has-text-dark'
    else
      link_to 'Login', new_user_session_path, class: 'navbar-item has-text-dark'
    end
  end

  def status_check
    return link_to 'Sign Up', new_user_registration_path, class: 'navbar-item has-text-dark' unless user_signed_in?
  end
end
