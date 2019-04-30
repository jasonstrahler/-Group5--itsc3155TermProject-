Given ("That I am on the add new class page") do
    visit '/classrooms/new'
end

Then("I should see the class name field") do
    expect(page).to have_css('input[type="text"][name*="ClassName"]')
end

Then("I should see the professor name field") do
    expect(page).to have_css('input[type="text"][name*="ProfessorName"]')
end

Then("I should see the class department field") do
    expect(page).to have_css('input[type="text"][name*="ClassDepartment"]')
end

