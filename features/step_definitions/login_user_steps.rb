Given("I am on the homepage") do
  visit 'users/sign_in'
end

Given("I use the email field with {string}") do |string|
  find(:css, "input[id$='email']").set(string)
end

Given("I use the password field with {string}") do |string|
  find(:css, "input[id$='password']").set(string)
end

Given("I press log in button {string}") do |string|
  click_button(string)
end

Then("I should see {string}") do |string|
  expect(page).to have_css('div', string)
end