require 'rails_helper'

RSpec.describe '/bachelorettes/:id/contestants' do
  before :each do
    test_data
  end

  describe 'as a visitor' do
    describe 'when I visit /bachelorettes/:id/contestants' do
      it 'shows contestants info' do
        visit bach_cont_index_path(@bach1)

        within("#contestant-#{@cont1.id}") do
          expect(page).to have_content(@cont1.name)
          expect(page).to have_content(@cont1.age)
          expect(page).to have_content(@cont1.hometown)
        end
        
        within("#contestant-#{@cont2.id}") do
          expect(page).to have_content(@cont2.name)
          expect(page).to have_content(@cont2.age)
          expect(page).to have_content(@cont2.hometown)
        end
      end

      it 'has a link that takes you to contestant show page' do
        visit bach_cont_index_path(@bach1)

        within("#contestant-#{@cont1.id}") do
          expect(page).to have_link("#{@cont1.name}")
          click_link("#{@cont1.name}")
        end

        expect(current_path).to eq("/contestants/#{@cont1.id}")
      end

      it 'shows unique names of all hometown from contestants' do
        visit bach_cont_index_path(@bach1)
        expect(page).to have_content("These Contestants are from these hometowns: Portland, Oregon")
      end
    end
  end

end