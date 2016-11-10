class TimeEntry < ApplicationRecord
	belongs_to :project
	validates :hours, numericality: true
	validates :minutes, numericality: true
	validates :date, presence: true
	validates :comments, presence: true
end
