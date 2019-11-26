class Account::BookingsPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def pending_booking?
    true
  end
end
