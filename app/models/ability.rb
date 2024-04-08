class Ability
    include CanCan::Ability
  
    def initialize(user)
      can :read, Stock
  
      return if user.blank?
  
      can :manage, TransactionRecord, user: user
      can :manage, Order,             user: user
  
      return unless user.role? :broker
  
      can :create, Stock
      can :update, Stock,       user: user
      can :destroy, Stock,      user: user
  
      return unless user.role? :admin
  
      can :manage, :all
      can :access, :rails_admin
    end
end