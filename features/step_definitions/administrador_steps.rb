Given("i am at admin register page") do
  visit "/logins"
  fill_in 'Login', :with => 'admin'
  fill_in 'Password', :with => 'admin'
  click_button 'Sign In'
  click_link 'New Admin'
end

Given("i create a admin with login {string} and password {string}") do |string, string2|
  fill_in 'administrador[login]', :with => string
  fill_in 'administrador[senha]', :with => string2
  click_button 'Create'
  click_link 'New Admin'
end


Given("i am at admin update page") do
  visit "/logins"
  fill_in 'Login', :with => 'admin'
  fill_in 'Password', :with => 'admin'
  click_button 'Sign In'
  click_link 'Edit'
end

When("i click on the update button") do
  click_button 'Update'
end

When("i fill login field {string} password field {string}") do |string, string2|
  fill_in 'administrador[login]', :with => string
  fill_in 'administrador[senha]', :with => string2
end

When("i click on the register button") do
  click_button 'Create'
end

Then("i see an admin registered successfuly message") do
  expect(page).to have_content('Administrador was successfully created.')
end

Then("i see an empty login error message") do
  expect(page).to have_content('Login Can not be blank')
end

Then("i see an login already taken error message") do
  expect(page).to have_content('Login Already exists')
end

Then("i see an empty password error message") do
  expect(page).to have_content('Senha Can not be blank')
end

Then("i see an admin updated successfuly message") do
  expect(page).to have_content('Administrador was successfully updated.')
end

Given("i am at admin with login {string} and password {string} page") do |string, string2|
  visit "/logins"
  fill_in 'Login', :with => 'admin'
  fill_in 'Password', :with => 'admin'
  click_button 'Sign In'
  click_link 'New Admin'
  fill_in 'administrador[login]', :with => string
  fill_in 'administrador[senha]', :with => string2
  click_button 'Create'
  click_link 'Log Out'
  fill_in 'Login', :with => string
  fill_in 'Password', :with => string2
  click_button 'Sign In'
end

When("i click on the delete button") do
  click_link 'Delete Profile'
end

Then("i see an admin deleted sucessfully message") do
  expect(page).to have_content('Administrador was successfully destroyed.')
end
