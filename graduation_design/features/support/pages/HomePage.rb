class HomePage
  include PageObject

  div(:user_menu, id: "node_menu_user")
  span(:logout_button, id: "logout_img")
  span(:username_location, class: "avatar-name")
  div(:unodm_homepage, class: "top dm")
  div(:unotm_homepage, class: "top tm")
  div(:unoms_homepage, class: "top ms")

  def username_text
    self.username_location
  end

  def unodm_homepage_exist
    self.unodm_homepage?
  end

  def unotm_homepage_exist
    self.unotm_homepage?
  end

  def unoms_homepage_exist
    self.unoms_homepage?
  end

end
