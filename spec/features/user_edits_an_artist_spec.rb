require 'rails_helper'

RSpec.feature "User edits an existing artist" do
  scenario "they enter data to update artist" do
    new_name = "Robert Marley"
    name     = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    artist = Artist.create(name: name, image_path: artist_image_path)

    visit artist_path(artist)
    click_on "Edit artist"
    fill_in 'artist_name', with: new_name
    click_on "Update Artist"

    expect(page).to have_content("Robert Marley")
    expect(page).to have_current_path(artist_path(artist))
  end
end
