require 'rails_helper'

RSpec.describe Session, type: :model do
  subject(:session) { build(:session) }

  describe 'associations' do
    it { is_expected.to have_many(:purchase_carts) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:ip_address) }
  end
end
