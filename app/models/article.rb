class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 2 }
	validates :slug, presence: true, length: { minimum: 2 }

	def to_param
		title.parameterize
	end
end
