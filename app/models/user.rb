class User < ApplicationRecord
  after_create :create_wallet
  has_one :wallet
  has_secure_password

  validates_uniqueness_of :email
  validates :email, presence: true

  def create_wallet
    Wallet.new(user: self, balance: 100)
  end
end
