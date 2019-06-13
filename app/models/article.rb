class Article < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5 } # Make sure that all articles have a title that is at least 5 characters long
	# for more about validations, see here: https://guides.rubyonrails.org/active_record_validations.html

	# Relationship from Article to Comment: one article can have many comments
	has_many :comments
end
