class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    else
      can :read, :all
      can :manage, Document, user_id: user.id
      can :create, Document
      can :manage, Section, document: { user_id: user.id }
      can :manage, Selection, section: { document: { user_id: user.id } }
    end
  end

end
