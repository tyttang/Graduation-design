class LoginPage
  include PageObject

#进入Unoms登录页面
  page_url "http://192.168.13.54:8088"   #required for visit_page

# login message
  text_field(:login_username, id: "login_username")
  text_field(:login_password, id: "login_password")
  link(:login_button, id: "login")
  div(:login_error_popup, id: "w2ui-popup")
  div(:login_notification, class: ['w2ui-centered', 'w2ui-alert-msg'])

# logout message
  span(:logout_button, id: "logout_img")
  div(:logout_popup, id: "w2ui-popup")
  div(:logout_msg, class: ['w2ui-centered', 'w2ui-confirm-msg'])
  link(:forget_password, id: "forget_password")

#define login
  def login_with(username, password)
    self.login_username = username
    self.login_password = password
    self.login_button
  end

  def login_notification_text
    self.login_notification_element.text
  end

# define logout
  def logout_button_click
    self.logout_button_element.click
  end

  def logout_popup_yes
    self.logout_popup_element.button(id: "Yes").click
  end

  def logout_popup_no
    self.logout_popup_element.button(id: "No").click
  end

  def forget_password_text
    self.forget_password_element.text
  end

  def logout_button_existence
    self.logout_button?
  end
end
