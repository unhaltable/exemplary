class Comment < ActiveRecord::Base

	belongs_to :user
	belongs_to :section
	belongs_to :comment
	has_many :comments
	has_many :votes

	def comment_score
		s = 0
		for vote in self.votes do
			if vote.vote == true
				s += 1
			elsif vote.vote == false
				s -= 1
			end
		end
		return s
	end
end
