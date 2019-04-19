Given ("I am a new, authenticated user") do
  email = 'djohn270@uncc.edu'
  password = 'randPass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
end

When("I go to register") do
  visit '/users/sign_up'
end

When("I fill in the email field {string} with {string}") do |string, string2|
  fill_in "email", :with => email
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
    click_button "Sign in"
end

Then("I should see {string}") do |string|
  page.html.should include(string)
end
