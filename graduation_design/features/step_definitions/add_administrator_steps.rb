Given /^I am on LoginPage, I will login root$/ do
  visit_page(LoginPage) do |page|
    page.login_username = 'root'
    page.login_password = '123456'
    page.login_button
  end
  # visit_page(LoginPage).login_with 'root', '123456'
end

When /^I will add one administrator '([^"]*)', '([^"]*)', '([^"]*)'$/ do |admin_name, admin_password, admin_email|
  on_page(UserPage).add_button_click
  on_page(UserPage).add_administrator admin_name, admin_password, admin_password, admin_email
end

And /^I logout and login the add administrator user$/ do
  on_page(LogoutPage).logout_button_click
  on_page(LogoutPage).logout_popup_yes
  # visit_page(LoginPage).login_with 'tang', '123456'
  visit_page(LoginPage) do |page|
    page.login_username = 'tang'
    page.login_password = '123456'
    page.login_button
  end
end

Then /^I can see the administrator name '([^"]*)'$/ do |username|
  on_page(HomePage).username_text.should include username
end
