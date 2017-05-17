require 'rails_helper'

RSpec.feature "User deletes an existing artist" do
  scenario "they click the delete button" do

    name                = "Bob Marley"
    artist_image_path   = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    artist = Artist.create(name: name, image_path: artist_image_path)

    visit artist_path(artist)
    click_on "Delete artist"

    expect(page).to_not have_content("Bob Marley")
    expect(page).to have_current_path(artists_path)
  end
end
