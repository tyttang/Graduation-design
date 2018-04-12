class UserPage
    include PageObject

#增加一个admin用户

    div(:user_menu, id: "node_menu_user")

    in_iframe(:index => 1) do |frame|
      text_field(:add_username, :id => "username", :frame => frame)
      text_field(:add_password, :id => "password", :frame => frame)
        text_field(:retype_password, :id => "__retype__password", :frame => frame)
          text_field(:add_email, :id => "email", :frame => frame)
      checkbox(:add_admin, :id => "administrator", :frame => frame)
      button(:add_save, :class => ['w2ui-btn', 'w2ui-btn-blue'], :frame => frame)
      table(:table_add, :class => "w2ui-button", :frame => frame)
      span(:menu_add_button, :class => "w2ui-icon-plus", :frame => frame)
    end

# 点击菜单中的user选项，再点击添加用户按钮
    def add_button_click
      self.user_menu_element.click
      self.menu_add_button_element.click
    end

# 增加一个管理员用户
    def add_administrator(name, password,re_password, email)
      self.add_username=(name)
      self.add_password=(password)
      self.retype_password=(re_password)
      self.add_email=(email)
      self.add_admin_element.click
      self.add_save
    end

  end
