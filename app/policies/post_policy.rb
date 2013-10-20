class PostPolicy < ApplicationPolicy
  attr_reader :user, :post
  class Scope < Struct.new(:user, :scope)
  end

  def initialize(user, post)
    @user = user
    @post = post
  end

  def create?
    if user
      user.editor? or not post.published?
    else
      false
    end
  end

  def new?
    if user
      user.editor? or not post.published?
    else
      false
    end
  end

  def upate?
    if user
      user.editor? or not post.published?
    else
      false
    end
  end

  def destroy?
    if user
      user.editor? or not post.published?
    else
      false
    end
  end

  def resolve
    scope
  end
end
