Feature: file upload
    I will go to Unoms login page and login root
    I will upload a file

Scenario: upload incorrect file
    Given I will go to Unoms login page and login root
    When I click the license menu and upload the incorrect file '/home/tyt/Files/dailywork/3min.adoc'
    And I click the save button
    Then I will see the information 'Malform license file'

Scenario: upload the unodm file
  Given I will go to Unoms login page and login root
  When I click the license menu and upload the unodm file '/home/tyt/Files/dailywork/dm.lic'
  And I click the save button
  Then I click logout go to Loginpage can see the unodm existence
  And I login root should see the unodm existence

Scenario: upload the unotm file
  Given I will go to Unoms login page and login root
  When I click the license menu and upload the unotm file '/home/tyt/Files/dailywork/Tm.lic'
  Then I click logout go to Loginpage can see the unotm existence
  And I login root should see the unotm existence

Scenario: upload the unoms file
  Given I will go to Unoms login page and login root
  When I click the license menu and upload the unoms file '/home/tyt/Files/dailywork/ms.lic'
  Then I click logout go to Loginpage can see the unoms existence
  And I login root should see the unoms existence


# MS
# TM
# TD
