Feature: Add a user to the login portal
  
  As a user
  So that I can effectively view classes and engagement meant for meant
  I want to be able to have a login

Scenario Outline: Creating a new account
  Given I am a new, authenticated user
  When I go to register 

  And I fill in the email field "email" with "<email>"
  And I fill in the id field "idNumber" with "<idNumber>"
  And I fill in the password field "password" with "<password>"
  And I fill in the password confirmation field "password_confirmation" with "<password>"
  And I press "Sign up"
  Then I should see "logged in as <email>"
  
  Examples:
  | email               | password  | idNumber  |
  | djohn270@uncc.edu   | randPass  | 801999999 |
  | tester@gmail.com    | whoops    | 801000000 |