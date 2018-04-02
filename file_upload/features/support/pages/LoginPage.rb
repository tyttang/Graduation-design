class LoginPage
  include PageObject

#进入登录页面

  page_url "http://192.168.13.54:8088"   #required for visit_page

  text_field(:login_username, id: "login_username")
  text_field(:login_password, id: "login_password")
  link(:login_button, id: "login")
  div(:license_button, id: "node_menu_license")

  in_iframe(:index => 1) do |frame|
    file_field(:file_upload, :class => "file-input", :frame => frame)
    button(:button_save, :name => "save", :frame => frame)
    div(:upload_information, :class => "w2ui-centered", :frame => frame)
  end

#输入登录信息
  def login_with(username, password)
    self.login_username = username
    self.login_password = password
    self.login_button
  end

  def license_button_click
    self.license_button_element.click
  end

  def file_upload_set(location)
    self.file_upload = location
  end

  # def file_upload
  #   iframe(index: 1).file_field(type: "file").set("/home/tyt/Files/dailywork/3min.adoc")
  # end


  # def button_save
  #   iframe(index: 1).button(name: "save").click
  # end
  #
  # def upload_information_text
  # self.upload_information_element.text
  # end

end
