class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope = Restaurant
      scope.all # => Restaurant.all
      # scope.where(user: user)
    end
  end

  def show?
    true
  end

  def create?
    true
    # user.present?
  end

  def destroy?
    user.admin || record.user == user
  end

  def update?
    # record = restaurant
    # user = current_user
    # restaurant.user == current_user
    user.admin || record.user == user
  end
end
