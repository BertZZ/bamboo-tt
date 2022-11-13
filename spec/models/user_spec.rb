require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  it 'creates users with secure passwords' do
    expect(user.password_digest).not_to eq "lettuce123"
  end

  it 'is created with a wallet with 100 coins in it' do
    expect(user.wallet.balance).to eq(100)
  end
end
