class LoginPage
  include PageObject

#进入登录页面

  page_url "http://192.168.13.54:8088"   #required for visit_page
  text_field(:login_username, id: "login_username")
  text_field(:login_password, id: "login_password")
  link(:login_button, id: "login")
  div(:login_error_popup, id: "w2ui-popup")
  div(:login_notification, class: ['w2ui-centered', 'w2ui-alert-msg'])
  link(:forget_password, id: "forget_password")
  div(:pop_login_notification, id: "w2ui-popup")
  div(:unodm_loginpage, class: "dm")
  div(:unotm_loginpage, class: "tm")
  div(:unoms_loginpage, class: "ms")
#输入登录信息
  def login_with(username, password)
    self.login_username = username
    self.login_password = password
    self.login_button
  end

  def login_button_click
    self.login_button_element.wait_until_present
  end
  # def login_notification_text
  #   # self.pop_login_notification?
  #   self.login_notification_element.text
  # end

  def forget_password_text
    self.forget_password_element.text
  end

  def unodm_loginpage_exist
    self.unodm_loginpage?
  end

  def unotm_loginpage_exist
    self.unotm_loginpage?
  end

  def unoms_loginpage_exist
    self.unoms_loginpage?
  end

end
