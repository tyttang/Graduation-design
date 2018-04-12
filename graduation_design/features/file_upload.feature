Feature: file upload
    I will go to Unoms login page and login root
    I will upload a file

Scenario: upload incorrect file
    Given I will go to Unoms login page and login root
    When I click the license menu and upload the incorrect file '/home/tyt/Files/dailywork/3min.adoc'
    And I click the save button
    Then I will see the information 'Malform license file'

# Scenario: upload right file
#   Given I will go to Unoms login page and login root
#   When I click the  license menu and upload the right file ''
#   And I click the save button
#   Then I will ...
