require 'rails_helper'

RSpec.describe "sign up", type: :feature do
  scenario "Visitor Signs up to the website" do
    visit '/'
    click_on 'SIGN UP'
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_password', with: "test123"
    fill_in 'user_password_confirmation', with: "test123"
    click_button 'sign_up'
    expect(page).to have_content 'Signed Up Sucessfully'
  end
end
