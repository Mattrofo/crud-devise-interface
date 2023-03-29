class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :bookings, dependent: :destroy
  has_many :rooms, dependent: :destroy
  has_many :bookings_as_owner, through: :rooms, source: :bookings

  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :role, inclusion: { in: %w(manager collaborator) }

end
