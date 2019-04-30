Given("I am on the sign up page") do
  visit 'users/sign_up'
end

And("I fill in the email field with {string}") do |string|
  find(:css, "input[id$='email']").set(string)
end

Given("I fill in the idNumber field with {string}") do |string|
  find(:css, "input[id$='idNumber']").set(string)
end

And("I fill in the password field with {string}") do |string|
  find(:css, "input[id$='password']").set(string)
end

And("I fill in the password confirmation field with {string}") do |string|
  find(:css, "input[id$='password_confirmation']").set(string)
end

And("I press {string}") do |string|
  click_button(string)
end