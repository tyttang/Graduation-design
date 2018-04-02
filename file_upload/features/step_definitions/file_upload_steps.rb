Given /^I will go to Unoms login page and login root$/ do
    visit_page(LoginPage).login_with 'root', '123456'
end

When /^I click the license button and upload a incorrect file '([^"]*)'$/ do |file_location|
    on_page(LoginPage).license_button_click
    on_page(LoginPage).file_upload_set file_location
end

And /^I click the save button$/ do
    on_page(LoginPage).button_save
end

Then /^I will see the information '([^"]*)'$/ do |msg|
    on_page(LoginPage).upload_information.should include msg
end
