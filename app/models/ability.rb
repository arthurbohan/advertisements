# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :destroy, Advertisement
      can :cancel, Advertisement.where(state: 1 || 3)
      can :approve, Advertisement.where(state: 1)
      can :publish, Advertisement.where(state: 3)
      can :archive, Advertisement.where(state: 4)
    else
      can :create, Advertisement
      can :update, Advertisement.where(state: 0)
      can :destroy, Advertisement.where(state: 1)
      can :add, Advertisement.where(state: 0)
    end
  end
end
