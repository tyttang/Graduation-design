Given /^I will go to Unoms login page and login root$/ do
    visit_page(LoginPage).login_with 'root', '123456'
end

When /^I click the license menu and upload the incorrect file '([^"]*)'$/ do |file_location|
    on_page(LicensePage).license_menu_click
    on_page(LicensePage).file_upload_set file_location
end

And /^I click the save button$/ do
    on_page(LicensePage).button_save
end

Then /^I will see the information '([^"]*)'$/ do |msg|
    on_page(LicensePage).upload_information.should include msg
end
