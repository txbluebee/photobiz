require 'rails_helper'

describe "add new image" do

  before(:each) do
    User.destroy_all
    Product.destroy_all
    @user = FactoryGirl.create(:user)
    login_as(@user, scope: :user)
    visit new_product_path
    fill_in 'Name', :with=>'test product'
    fill_in 'Price', :with => '9.99'
    fill_in 'Description', :with=>'test description'
    attach_file "Image", "spec/assets/img/img1.jpeg"
    click_on 'Create Product'
  end

  it "adds a new product" do
    expect(page).to have_content 'test product'
  end

  it "navigates to image display" do
    click_on 'test product'
    expect(page).to have_content 'test product'
  end
end
