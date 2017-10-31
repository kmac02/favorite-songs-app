require 'rails_helper'

feature "visiting the homepage" do
  scenario "the user sees a list of songs" do
    songs = Song.all

    visit '/'

    expect(page).to have_content("That's My Song!")
  end
end
