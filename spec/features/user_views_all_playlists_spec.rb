require 'rails_helper'

RSpec.feature "User visits playlist index" do
  scenario "they click on an individual playlist" do
    playlist = create(:playlist_with_songs)

    visit playlists_path
    click_on "#{playlist.name}"

    expect(page).to have_current_path(playlist_path(playlist))
    expect(page).to have_content(playlist.name)
  end
end
