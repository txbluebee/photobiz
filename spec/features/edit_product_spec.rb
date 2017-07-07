describe "edit product info" do

  before(:each) do
    User.destroy_all
    Product.destroy_all
    @user = FactoryGirl.create(:user)
    login_as(@user, scope: :user)
    visit new_product_path
    fill_in 'Name', :with=>'test product'
    fill_in 'Price', :with => '9.99'
    fill_in 'Description', :with=>'test description'
    click_on 'Create Product'
  end

  it "edits existing product info" do
    click_on 'test product'
    click_on 'Edit Product'
    fill_in 'Name', :with => 'edited product'
    click_on 'Update Product'
    expect(page).to have_content 'edited product'
  end

  it "deletes existing product" do
    click_on 'test product'
    click_on 'Delete Product'
    expect(page).to have_content 'Product successfully deleted'
  end
end
