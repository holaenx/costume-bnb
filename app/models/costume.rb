class Costume < ApplicationRecord
  belongs_to :user
  has_many :rents, dependent: :destroy
  has_many_attached :photos
  validates :name, :description, :price, :city, presence: true
  validates :size, inclusion: { in: %w(XS S L XL XXL)}
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
