Feature: add one administrator user
    In order to add one administrator user
    I wiil login root user to add one administrator user and logout
    Then I will  login the administrator user

Scenario: add one administrator user and login it
    Given I am on LoginPage, I will login root
    When I will add one administrator 'tang', '123456', '123456@email.com'
    And I logout and login the add administrator user
    Then I can see the administrator name 'tang'
