require 'rails_helper'

feature "create new user" do
  scenario "the homepage has a registration link" do
    visit '/'

    click_link("Register")

    expect(page).to have_current_path new_user_path
  end

  scenario "the homepage has a login link" do
    visit '/'

    click_link("Log in")

    expect(page).to have_current_path login_path
  end

  scenario "the homepage has a log out link" do

    visit '/'

    click_link("Register")

    expect(page).to have_current_path new_user_path

    fill_in 'user[name]', :with => 'purple'
    fill_in 'user[email]', :with => 'purple@purple.org'
    fill_in 'user[password]', :with => 'purple'
    fill_in 'user[password_confirmation]', :with => 'purple'

    click_button("Submit")


    expect(page).to have_current_path root_path


    click_link("Logout")

    expect(page).to have_current_path root_path

    click_link('Log in')

    fill_in 'email', :with => 'purple@purple.org'
    fill_in 'password', :with => 'purple'

    click_button("Submit")

    expect(page).to have_current_path root_path
  end
end
