require 'rails_helper'

describe "add new user" do

  it "adds a new admin user" do
    visit new_user_registration_path
    fill_in 'Username', :with=>'Lily'
    fill_in 'Email', :with=>'lily@lily.com', :match => :prefer_exact
    fill_in 'Password', :with=> '123456', :match => :prefer_exact
    fill_in 'Password confirmation', :with=> '123456'
    select('admin', :from => 'Role')
    click_on 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  it "gives error when nothing is entered" do
    visit new_user_registration_path
    click_on 'Sign up'
    expect(page).to have_content 'Please review the problems below'
  end

end
