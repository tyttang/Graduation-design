class LogoutPage
  include PageObject

# logout message
  span(:logout_button, id: "logout_img")
  div(:logout_popup, id: "w2ui-popup")
  div(:logout_msg, class: ['w2ui-centered', 'w2ui-confirm-msg'])
  div(:login_error_popup, id: "w2ui-popup")

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

  def logout_button_existence
    self.logout_button?
  end

  def login_out_click
    self.logout_button_element.click
    self.logout_popup_element.button(id: "Yes").click
  end

end
