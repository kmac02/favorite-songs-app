require 'rails_helper'

feature "visiting the homepage" do
  scenario "the homepage has a title" do
    visit '/'

    expect(page).to have_content("That's My Song!")
  end

  scenario "the users sees a song title" do
    # Refactor later
  end
end
