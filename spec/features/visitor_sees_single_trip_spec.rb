require 'rails_helper'

describe 'as a visitor' do
  describe 'when i visit the trips index page' do
    describe "when I click on specific trip" do
      it 'shows the specific trip and information' do
        trip = Trip.create(name: 'Cheesy Name for a Trip Goes Here')
        trail_1 = Trail.create(name: '1', address: 'another', length: 23, trip_id: trip.id)
        trail_2 = Trail.create(name: '12', address: 'anot1her', length: 23, trip_id: trip.id)
        trail_3 = Trail.create(name: '13', address: 'anot2her', length: 23, trip_id: trip.id)


        visit trip_path(trip)

        save_and_open_page
        click_on trip.name

        expect(page).to have_content(trip.name)
        expect(page).to have_content(trail_1.name)
        expect(page).to have_content(trail_1.address)
        expect(page).to have_content(trail_1.length)
        expect(page).to have_content(trail_2.name)
        expect(page).to have_content(trail_2.address)
        expect(page).to have_content(trail_2.length)
        expect(page).to have_content(trail_3.name)
        expect(page).to have_content(trail_3.address)
        expect(page).to have_content(trail_3.length)
      end
    end
  end
end
