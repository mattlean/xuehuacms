class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true
	validates :slug, presence: true

	def to_param
		slug.parameterize
	end
end
