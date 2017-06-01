class Micropost < ApplicationRecord
	belongs_to :user
	validates :content, length: { maximum: 190 }, presence: true
end
