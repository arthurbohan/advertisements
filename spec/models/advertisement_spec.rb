require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { FactoryBot.create(:advertisement) }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(advertisement).to be_valid
    end

    it 'is not valid without a title' do
      advertisement.name = ''
      expect(advertisement).not_to be_valid
    end

    it 'is not valid without too much symbols' do
      advertisement.name = "a" * 257
      expect(advertisement).not_to be_valid
    end


  end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { is_expected.to  validate_presence_of(:name) }
    it { is_expected.to  validate_length_of(:name).is_at_most(256) }
  end
end
