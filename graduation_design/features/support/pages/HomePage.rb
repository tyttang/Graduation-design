class HomePage
  include PageObject

  div(:user_menu, id: "node_menu_user")
  span(:logout_button, id: "logout_img")
  span(:username_location, class: "avatar-name")

  def username_text
    self.username_location
  end
end
