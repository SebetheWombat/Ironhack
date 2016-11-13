class Concert < ApplicationRecord
	has_many :comments
	validates :artist, presence: true
	validates :venue, presence: true
	validates :date, presence: true
	validates :price, numericality: true
end
