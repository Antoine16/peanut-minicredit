class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :send_welcome_email

  has_many :credits
  has_many :loans
  devise :database_authenticatable, :registerable, :rememberable, :trackable

  validates :email, presence: true

  def name
    email
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
