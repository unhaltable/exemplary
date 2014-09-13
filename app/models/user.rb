class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :documents
  has_many :comments
  has_and_belongs_to_many :roles
  belongs_to :university

  ##
  # Return True iff the user has the role specified by the given symbol
  def has_role?(role_sym)
  	roles.any? { |r| r.name.underscore.to_sym == role_sym}
  end
end
