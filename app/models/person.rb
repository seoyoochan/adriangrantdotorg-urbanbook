class Person < ActiveRecord::Base
	has_many :user
	has_paper_trail
	acts_as_taggable

	def admin_permalink
    admin_post_path(self)
    end
end
