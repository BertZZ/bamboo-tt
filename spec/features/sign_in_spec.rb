require 'rails_helper'

RSpec.describe "sign in", type: :feature do
  let(:user) { create(:user) }

  scenario "User logs into the website" do
    visit '/'
    click_on 'LOGIN'
    fill_in 'session_email', with: user.email
    fill_in 'session_password', with: 'lettuce123'
    fill_in 'session_password_confirmation', with: 'lettuce123'
    click_on 'Log in'
    expect(page).to have_content "Welcome #{user.email}"
  end
end
