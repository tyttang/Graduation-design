Given /^I will go to Unoms login page$/ do
  visit_page(LoginPage)
end

Given /^I will go to login page and login root$/ do
  visit_page(LoginPage).login_with 'root', '123456'
end

When /^I will input right username and password$/ do
  on_page(LoginPage).login_with 'root', '123456'
end

When /^I will input error username or password$/ do
  on_page(LoginPage).login_with 'room', '123456'
end

When /^I click the logout button$/ do
  on_page(LogoutPage).logout_button_click
end

And /^I click the login button$/ do
  on_page(LoginPage).login_button_click
end

And /^I will see the popup '([^"]*)'$/ do |information1|
    on_page(LogoutPage).logout_msg.should include information1
end

And /^I will select Yes and return login page$/ do
  on_page(LogoutPage).logout_popup_yes
end

And /^I will select No and close the popup$/ do
  on_page(LogoutPage).logout_popup_no
end

Then /^I can see the logout button existence$/ do
  on_page(LogoutPage).logout_button_existence
end

Then /^I can see the '([^"]*)' button on the login page$/ do |msg|
  on_page(LoginPage).forget_password_text.should include msg
end

Then /^I will see the notification "([^']*)"$/ do |login_notification|
  # on_page(LoginPage).login_notification_text.should include login_notification
  on_page(LoginPage).login_notification.should include login_notification
end
