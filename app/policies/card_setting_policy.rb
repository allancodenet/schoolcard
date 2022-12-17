class CardSettingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def initialize(user, scope)
      @user  = user
      @scope = scope
    end
    def resolve
      scope.all
    end

    def resolve_admin
      scope.where(user_id: user.id)
    end
  end
end
