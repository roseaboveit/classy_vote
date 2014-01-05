class UsersController < ApplicationController
  def show
    @queries = Query.all
    @mine = Query.where("user_id = ?", current_user.id)
    @others = Query.where("user_id != ?", current_user.id)
    # @already_voted = Query.where("user_id = ?", current_user.id)
  end
end
