class User < ApplicationRecord
  
  has_many :library_users, dependent: :destroy
  has_many :libraries, through: :library_users
  has_secure_password

  validates :first_name,
            presence: true

  validates :last_name,
            presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
            presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true,
            length: { maximum: 255 }

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
