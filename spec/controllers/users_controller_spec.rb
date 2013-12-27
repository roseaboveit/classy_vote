require 'spec_helper'

describe UsersController do
  describe "sign in" do
    it "POST /users/sign_in redirects valid user to profile page"
    it "POST /users/sign_in redirects invalid user to welcome page with notice"
  end

  describe "GET #show/:id" do
    it "renders the :show template for requested user"
    it "displays asked questions"
    it "only displays answered questions if :id==:user_id"
    it "only displays questions to answer if :id==:user_id"
    it "only displays link to New Question form if :id==:user_id"
  end
end
