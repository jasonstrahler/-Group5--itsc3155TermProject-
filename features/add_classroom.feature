Feature: Add a class using the create classroom page
  
  As a user
  So that I can add more classes at a later time
  I want to be able to add classes
  
 Scenario: Add a classroom
   Given That I am on the add class page
   Then I should fill the class name field
   Then I should fill the professor name field
   Then I should fill the class department field
   Then I should click the create button