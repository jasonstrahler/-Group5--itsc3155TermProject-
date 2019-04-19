Feature: See the create classroom page
  
  As a user
  So that I can add more classes at a later time
  I want to be able to see the create classes
  
Scenario: Visit and verify elements of create class
  Given That I am on the add new class page
  Then I should see the classroom list link
  Then I should see the class name field
  Then I should see the professor name field
  Then I should see the class department field