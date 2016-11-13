class Comment < ApplicationRecord
	belongs_to :concert
	validates :author, presence: true
	validates :comment, presence: true
end
