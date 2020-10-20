require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without a password' do
      user.password = ''
      expect(user).not_to be_valid
    end

    it 'is not valid without enough symbols' do
      user.password = 123
      expect(user).not_to be_valid
    end

    it 'is not valid without a email' do
      user.email = ''
      expect(user).not_to be_valid
    end

    it 'is not valid with uncorrect form' do
      user.email = 'asd'
      expect(user).not_to be_valid
    end

    it 'is not valid without an email' do
      user.email = nil
      expect(user).not_to be_valid
    end
  end

  describe 'Advertisements' do
    it { is_expected.to have_many(:advertisements) }
  end

  describe 'validations' do
    it { is_expected.to  validate_presence_of(:email) }
    it { is_expected.to  validate_length_of(:email).is_at_most(256) }
  end
end
