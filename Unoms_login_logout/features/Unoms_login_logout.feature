Feature: Logout
    I will goto Unoms login page
    I will test the login function
    I will login root test the logout button function

Scenario: Input right username and password
    Given I will go to Unoms login page
    When I will input right username and password
    And I click the login button
    Then I can see the logout button existence

Scenario: Input error username or password
    Given I will go to Unoms login page
    When I will input error username or password
    And I click the login button
    Then I will see the notification 'Invalid username or password'



Scenario: test logout button select Yes
    Given I will go to login page and login root
    When I click the logout button
    And I will see the popup 'Are you sure to leave?'
    And I will select Yes and return login page
    Then I can see the 'Forget password' button on the login page

Scenario: test logout button select No
    Given I will go to login page and login root
    When I click the logout button
    And I will see the popup 'Are you sure to leave?'
    And I will select No and close the popup
    Then I can see the logout button existence


# logout功能测试case:
# 登录root用户，点击logout按钮 -
# 弹出提示框 Are you sure to leave? 默认Yes
# 点击No,提示框消失，返回原界面
# 点击logout按钮，弹出框选择Yes
# root用户成功退出，返回到登录界面
