class UsersController < ApplicationController
  def new
    # needs to redirect to /users/sign_up
  end

  def create
    # saves from /users/sign_up to the database
  end

  def show
    # displays the user page of the signed_in user
  end

  def edit
    # shows edit page for the user page of the signed_in user
  end

  def update
    # saves the edited page
  end

  def destroy
    # Removes the user from the database.
    # Does this destroy the questions and answers made by the user?
    # If we make this less anonymous then we should definitely remove all associated data
    # If it remains anonymous then we can simply redefine all questions made by the user to a 
    # default dummy user "1"
  end

end
