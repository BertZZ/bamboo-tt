require 'rails_helper'

RSpec.describe User, type: :model do
  it 'creates users with secure passwords' do
    user = create(:user)
    expect(user.password_digest).not_to eq "lettuce123"
  end
end
