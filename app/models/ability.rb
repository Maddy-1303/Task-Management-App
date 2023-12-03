class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # Guest user (not logged in)

    # Abilities for tasks
    can :read, Task, visibility: 'public'  # Guest can read public tasks

    # Authenticated users
    if user.persisted?  # Check if the user is logged in
      can :create, Task  # User can create tasks
      can [:update, :destroy], Task, user_id: user.id  # User can update and destroy their own tasks
      can :read, Task  # User can also read tasks (including their own)
    end
  end
end
