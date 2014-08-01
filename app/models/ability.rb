class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user
    if user.role? :admin
      can :manage, :all
    elsif user.role? :menu
      can [:create, :update, :destroy], Category
    elsif user.role? :videos
      can [:create, :update, :destroy], Video
    elsif user.role? :galeria
      can [:create, :update, :destroy], Photo
    elsif user.role? :blog
      can [:create, :update, :destroy], Post
    else
      can :read, :all
    end
  end

end