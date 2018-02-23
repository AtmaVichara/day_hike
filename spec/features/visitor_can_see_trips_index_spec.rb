require 'rails_helper'

describe "as a visitor" do
  describe "when I visit the trips index" do
    it "shows all trips and trails" do
      trip = Trip.create(name: 'Cheesy Name for a Trip Goes Here')
      trail = Trail.create(name: 'Changing', address: 'The World', length: 22, trip_id: trip.id)
      trail2 = Trail.create(name: 'Another', address: 'Things', length: 22, trip_id: trip.id)
      trail3 = Trail.create(name: 'Oh Geeze', address: 'Yet Another', length: 22, trip_id: trip.id)
      visit trips_path

      expect(page).to have(trip.name)
      expect(page).to have_content(trail.name)
      expect(page).to have_content(trail2.name)
      expect(page).to have_content(trail3.name)
      expect(page).to have_content(trail.address)
      expect(page).to have_content(trail2.address)
      expect(page).to have_content(trail3.address)
      expect(page).to have_content(trail.length)
      expect(page).to have_content(trail2.length)
      expect(page).to have_content(trail3.length)
    end
  end
end
