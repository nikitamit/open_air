class User < ActiveRecord::Base
  # :token_authenticatable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates :username, :company, presence: true
  validates :username, uniqueness: true

  attr_accessible :username, :password, :password_confirmation, :remember_me, :company, :email

  def open_air_auth
    {user: self.username, password: self.password, company: self.company}
  end
end
