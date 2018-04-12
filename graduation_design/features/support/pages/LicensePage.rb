class LicensePage
  include PageObject

  div(:license_menu, id: "node_menu_license")

  in_iframe(:index => 1) do |frame|
    file_field(:file_upload, :class => "file-input", :frame => frame)
    button(:button_save, :name => "save", :frame => frame)
    div(:upload_information, :class => "w2ui-centered", :frame => frame)
  end

  def license_menu_click
    self.license_menu_element.click
  end

  def file_upload_set(location)
    self.file_upload = location
  end

end
