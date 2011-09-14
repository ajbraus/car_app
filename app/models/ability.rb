class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new #guest user
    
    if user.role? :admin
      can :manange, :all
      
    elsif user.role? :manager_dispatcher
      can :read, :all
      can :manage, [Ticket, Job, Customer, Vehicle]
      
    elsif user.role? :service_writer
      can :read, :all
      can :manage, [Ticket, Job, Customer, Vehicle, Appointment]
      cannot :destroy, [Ticket, Job, Customer, Vehicle]
      
    elsif user.role? :technician
      can :read, :all
      can :manage, [Ticket, Job, Customer, Vehicle]
      cannot [:create, :update], [Customer, Vehicle]
      cannot [:create, :destroy], Ticket
    
    elsif user.role? :cashier
      can :read, [Ticket, Job, Customer, Vehicle, Appointment]
      can :manage, [Ticket, Job, Customer, Vehicle, Appointment]
      cannot [:create, :destroy], Ticket
      cannot [:create, :update, :destroy], [Job, Customer, Vehicle]
      
    elsif user.role? :accountant
      can :read, :all
      
    elsif user.role? :guest
      can :read, :all
      cannot :read, Vehicle
    end
  end
end

    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities

