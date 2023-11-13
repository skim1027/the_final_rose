require 'rails_helper'

RSpec.describe '/outings/:id' do
  before :each do
    test_data
  end

  describe 'as a visitor' do
    describe 'when I visit /outings/:id' do
      it 'shows outing name, location and date' do
        visit out_show_path(@out1)

        expect(page).to have_content(@out1.name)
        expect(page).to have_content("Location: #{@out1.location}")
        expect(page).to have_content("Date: #{@out1.date}")
      end

      it 'shows number of contestants and name that went on the outings' do
        visit out_show_path(@out1)

        expect(page).to have_content("Count of Contestants: 3")
        expect(page).to have_content("#{@cont1.name}")
        expect(page).to have_content("#{@cont2.name}")
      end

      it 'has an option to delete contestants name, only for this outing' do
        visit out_show_path(@out1)

        expect(page).to have_content("#{@cont1.name}")

        within("#contestant-#{@cont1.id}") do
          expect(page).to have_button("Remove")
          click_button("Remove")
        end
        expect(current_path).to eq(out_show_path(@out1))
        expect(page).to_not have_content("#{@cont1.name}")

        visit out_show_path(@out4)
        expect(page).to have_content("#{@cont1.name}")
      end
    end
  end
end

