Given /^I will go to Unoms login page and login root$/ do
    visit_page(LoginPage).login_with 'root', '123456'
end

When /^I click the license menu and upload the incorrect file '([^"]*)'$/ do |file_incorrect|
    on_page(LicensePage).license_menu_click
    on_page(LicensePage).file_upload_set file_incorrect
end

When /^I click the license menu and upload the unodm file '([^"]*)'$/ do |file_dm|
    on_page(LicensePage).license_menu_click
    on_page(LicensePage).file_upload_set file_dm
  end

When /^I click the license menu and upload the unotm file '([^"]*)'$/ do |file_tm|
    on_page(LicensePage).license_menu_click
    on_page(LicensePage).file_upload_set file_tm
  end

When /^I click the license menu and upload the unoms file '([^"]*)'$/ do |file_ms|
    on_page(LicensePage).license_menu_click
    on_page(LicensePage).file_upload_set file_ms
  end

And /^I click the save button$/ do
    on_page(LicensePage).button_save
end

And /^I login root should see the unodm existence$/ do
    on_page(LoginPage).login_with 'root', '123456'
    on_page(HomePage).unodm_homepage_exist
end

And /^I login root should see the unotm existence$/ do
    on_page(LoginPage).login_with 'root', '123456'
    on_page(HomePage).unotm_homepage_exist
end
#
And /^I login root should see the unoms existence$/ do
    on_page(LoginPage).login_with 'root', '123456'
    on_page(HomePage).unoms_homepage_exist
end

Then /^I will see the information '([^"]*)'$/ do |msg|
    on_page(LicensePage).upload_information.should include msg
end

Then /^I click logout go to Loginpage can see the unodm existence$/ do
    on_page(LogoutPage).login_out_click
    on_page(LoginPage).unodm_loginpage_exist
end

Then /^I click logout go to Loginpage can see the unotm existence$/ do
    on_page(LogoutPage).login_out_click
    on_page(LoginPage).unotm_loginpage_exist
end

Then /^I click logout go to Loginpage can see the unoms existence$/ do
    on_page(LogoutPage).login_out_click
    on_page(LoginPage).unoms_loginpage_exist
end
