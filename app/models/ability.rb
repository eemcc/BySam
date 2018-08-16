class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all . # permissions for every user, even if not logged in
    if user.present?  # additional permissions for logged in users (they can manage their posts)
      can :manage, Comment, user_id: user.id
      if user.admin?  # additional permissions for administrators
        can :manage, :all
      else
        can :read, :all
      end
    end
  end

  def initialize(user)
    user ||= User.new # guest user, not logged in
    can :manage, User, id: user.id
  end
end
