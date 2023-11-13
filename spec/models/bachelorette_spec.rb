require "rails_helper"

RSpec.describe Bachelorette, type: :model do

  before :each do
    test_data
  end

  describe "relationships" do
    it {should have_many :contestants}
    it {should have_many(:outings).through(:contestants)}
  end

  describe 'average_age_contestants' do
    it 'provides average age of the contestant for that season' do
      expect(@bach1.average_age_contestants).to eq(29)
    end
  end
end
