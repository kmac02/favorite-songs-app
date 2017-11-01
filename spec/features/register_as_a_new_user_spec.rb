require 'rails_helper'

feature "User visits our web app" do

  scenario "User  registers, logs out, and logs in" do
    # REGISTERING
    visit '/'

    click_link("Register")

    expect(page).to have_current_path new_user_path

    fill_in 'user[name]', :with => 'purple'
    fill_in 'user[email]', :with => 'purple@purple.org'
    fill_in 'user[password]', :with => 'purple'
    fill_in 'user[password_confirmation]', :with => 'purple'

    click_button("Submit")

    expect(page).to have_current_path root_path

    # LOGGING OUT
    click_link("Logout")

    expect(page).to have_current_path root_path

    # LOGGING IN
    click_link('Log in')

    fill_in 'email', :with => 'purple@purple.org'
    fill_in 'password', :with => 'purple'

    click_button("Submit")

    expect(page).to have_current_path root_path
  end
end
