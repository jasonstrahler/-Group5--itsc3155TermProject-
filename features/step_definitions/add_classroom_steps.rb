Given ("That I am on the add class page") do
    visit '/classrooms/new'
end

Then("I should fill the class name field") do
  find(:css, "input[id$='ClassName']").set("3155")
end

Then("I should fill the professor name field") do
  find(:css, "input[id$='ProfessorName']").set("Mejias")
end

Then("I should fill the class department field") do
  find(:css, "input[id$='ClassDepartment']").set("ITSC")
end

Then("I should click the create button") do
   click_button("Create Classroom")
end