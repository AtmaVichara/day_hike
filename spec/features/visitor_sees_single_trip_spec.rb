require 'rails_helper'

describe 'as a visitor' do
  describe 'when i visit the trips index page' do
    describe "when I click on specific trip" do
      it 'shows the specific trip and information' do
        trip = Trip.create(name: 'Cheesy Name for a Trip Goes Here')

        visit trip_path(trip)

        click_on trip.name

      end
    end
  end
end
