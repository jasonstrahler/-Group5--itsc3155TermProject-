Given ("I am on the homepage") do
  visit '/users/sign_up'
end

When("I fill in the email field {string} with {string}") do |string, string2|
  fill_in :email, with: "email@gmail.com"
end

When("I fill in the id field {string} with {string}") do |string, string2|
  fill_in "idNumber", :with => idNumber
end

When("I fill in the password field {string} with {string}") do |string, string2|
  fill_in "password", :with => password
end

When("I fill in the password confirmation field {string} with {string}") do |string, string2|
  fill_in "password_confirmation", :with => password
end

When("I press {string}") do |string|
    click_button "Sign up"
end

Then("I should see {string}") do |string|
  expect(page).to have_content(string)
end
