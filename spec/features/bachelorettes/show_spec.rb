require 'rails_helper'

RSpec.describe '/bachelorettes/:id' do
  before :each do
    test_data
  end

  describe 'as a visitor' do
    describe 'when I visit /bachelorettes/:id' do
      it 'shows bachs name, season number, and description of the season' do
        #US1
        visit "/bachelorettes/#{@bach1.id}"

        expect(page).to have_content("Bachelorette's Name: #{@bach1.name}")
        expect(page).to have_content("Season Number: #{@bach1.season_number}")
        expect(page).to have_content("Description: #{@bach1.description}")
      end

      it 'shows the link to see contestants which takes you to the contestants index page' do
        #US 1
        visit "/bachelorettes/#{@bach1.id}"

        expect(page).to have_link("See Contestants")

        click_link("See Contestants")

        expect(current_path).to eq("/bachelorettes/#{@bach1.id}/contestants")
        expect(page).to have_content(@cont1.name)
        expect(page).to have_content(@cont2.name)
        expect(page).to_not have_content(@cont3.name)
      end

      it 'shows average age of contestants' do
        visit "/bachelorettes/#{@bach1.id}"

        expect(page).to have_content("Average Age of Contestants: 29")
      end
    end
  end
end