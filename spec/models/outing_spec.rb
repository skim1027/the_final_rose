require 'rails_helper'

RSpec.describe Outing, type: :model do
  before :each do
    test_data
  end

  describe "relationships" do
    it { should have_many :contestant_outings }
    it { should have_many(:contestants).through(:contestant_outings) }
  end

  describe 'count_contestants' do
    it 'counts number of contestants for the outing' do
      expect(@out1.count_contestants).to eq(3)
    end
  end
end