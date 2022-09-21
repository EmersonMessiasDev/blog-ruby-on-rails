class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # se o id do usuario logado for igual ao que criou o registro
    user.id ==record.user.id
  end

  def destroy?
    # se o id do usuario logado for igual ao que criou o registro
    user.id ==record.user.id
  end
end
