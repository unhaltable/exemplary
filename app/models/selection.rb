class Selection < ActiveRecord::Base

	belongs_to :section

  validates :x, :y, :x2, :y2, numericality: { only_integer: true }

end
