require 'rails_helper'

describe "as a visitor" do
  describe "when I visit the trips index" do
    it "shows all trips and trails" do
      trip = Trip.create(name: 'Cheesy Name for a Trip Goes Here')
      trip2 = Trip.create(name: 'Cheesy Name for a Trip Goes Here')
      trip3 = Trip.create(name: 'Cheesy Name for a Trip Goes Here')
      trip4 = Trip.create(name: 'Cheesy Name for a Trip Goes Here')

      visit trips_path

      save_and_open_page

      expect(page).to have_link(trip.name)
      expect(page).to have_link(trip2.name)
      expect(page).to have_link(trip3.name)
      expect(page).to have_link(trip4.name)
    end
  end
end
