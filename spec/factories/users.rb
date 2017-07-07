FactoryGirl.define do
  factory :user do
    username "Lily"
    email "lily@lily.com"
    password '123456'
    password_confirmation '123456'
    role 'admin'
  end

  factory :user2 do
    username "Lily"
    email "lily@lily.com"
    password '123456'
    password_confirmation '123456'
    role 'basic'
  end
end
