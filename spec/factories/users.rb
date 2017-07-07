FactoryGirl.define do
  factory :user do
    username "Lily"
    email "lily@lily.com"
    password '123456'
    password_confirmation '123456'
    role 'admin'
  end
end
