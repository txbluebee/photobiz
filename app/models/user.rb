class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :account
  after_create :create_account

  def create_account
    user = User.last
    account = Account.create!(:user_id => user.id)
  end
end
