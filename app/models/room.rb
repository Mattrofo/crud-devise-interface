class Room < ApplicationRecord

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :price, :name, :user, :address, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_address_and_price,
  against: [ :address, :price ],
  using: {
    tsearch: { prefix: true }
  }
end
