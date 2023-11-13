require 'rails_helper'

RSpec.describe '/contestants/:id' do
  before :each do
    test_data
  end

  describe 'as a visitor' do
    describe 'when I visit /contestants/:id' do
      it 'shows name, season number and description' do
        visit cont_show_path(@cont1)

        expect(page).to have_content(@cont1.name)
        expect(page).to have_content("Season #{@cont1.bachelorette.season_number} - #{@cont1.bachelorette.description}")
        expect(page).to have_content("Outings:\nSkiing\nMountain Biking")
      end

      it 'has a link that takes you to outings show page' do
        visit cont_show_path(@cont1)
        expect(page).to have_link("Skiing")
        click_link("Skiing")
        expect(current_path).to eq("/outings/#{@out1.id}")
      end
    end
  end
end