Feature: Add a user to the login portal
  
  As a user
  So that I can effectively view classes and engagement meant for meant
  I want to be able to have a login

Scenario: Creating a new account
  Given I am on the sign up page
  And I fill in the email field with "tester@uncc.edu"
  And I fill in the idNumber field with "801999999"
  And I fill in the password field with "randPass"
  And I fill in the password confirmation field with "randPass"
  And I press "Sign up"