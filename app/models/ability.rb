class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.is_admin  
      can :manage, :all
    else
    	can :update, Product do |product|
    		product.user==user
    	end
    	can :destroy, Product do |product|
    		product.user==user
    	end
        can :create, :products
        can :read, :all
    end
  end
end