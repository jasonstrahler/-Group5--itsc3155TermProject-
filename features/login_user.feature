Feature: Login a user to the login portal
  
  As a user
  So that I can effectively view classes and engagement meant for meant
  I want to be able to have login using an existing login

Scenario: Logging in an account
  Given I am on the homepage
  And I use the email field with "tester@uncc.edu"
  And I use the password field with "randPass"
  And I press log in button "Log in"
  Then I should see "logged in as tester@uncc.edu"
  