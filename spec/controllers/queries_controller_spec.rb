require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe QueriesController do

  # This should return the minimal set of attributes required to create a valid
  # Query. As you add validations to Query, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # QueriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all queries as @queries" do
      query = Query.create! valid_attributes
      get :index, {}, valid_session
      assigns(:queries).should eq([query])
    end
  end

  describe "GET show" do
    it "assigns the requested query as @query" do
      query = Query.create! valid_attributes
      get :show, {:id => query.to_param}, valid_session
      assigns(:query).should eq(query)
    end
  end

  describe "GET new" do
    it "assigns a new query as @query" do
      get :new, {}, valid_session
      assigns(:query).should be_a_new(Query)
    end
  end

  describe "GET edit" do
    it "assigns the requested query as @query" do
      query = Query.create! valid_attributes
      get :edit, {:id => query.to_param}, valid_session
      assigns(:query).should eq(query)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Query" do
        expect {
          post :create, {:query => valid_attributes}, valid_session
        }.to change(Query, :count).by(1)
      end

      it "assigns a newly created query as @query" do
        post :create, {:query => valid_attributes}, valid_session
        assigns(:query).should be_a(Query)
        assigns(:query).should be_persisted
      end

      it "redirects to the created query" do
        post :create, {:query => valid_attributes}, valid_session
        response.should redirect_to(Query.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved query as @query" do
        # Trigger the behavior that occurs when invalid params are submitted
        Query.any_instance.stub(:save).and_return(false)
        post :create, {:query => {  }}, valid_session
        assigns(:query).should be_a_new(Query)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Query.any_instance.stub(:save).and_return(false)
        post :create, {:query => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested query" do
        query = Query.create! valid_attributes
        # Assuming there are no other queries in the database, this
        # specifies that the Query created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Query.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => query.to_param, :query => { "these" => "params" }}, valid_session
      end

      it "assigns the requested query as @query" do
        query = Query.create! valid_attributes
        put :update, {:id => query.to_param, :query => valid_attributes}, valid_session
        assigns(:query).should eq(query)
      end

      it "redirects to the query" do
        query = Query.create! valid_attributes
        put :update, {:id => query.to_param, :query => valid_attributes}, valid_session
        response.should redirect_to(query)
      end
    end

    describe "with invalid params" do
      it "assigns the query as @query" do
        query = Query.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Query.any_instance.stub(:save).and_return(false)
        put :update, {:id => query.to_param, :query => {  }}, valid_session
        assigns(:query).should eq(query)
      end

      it "re-renders the 'edit' template" do
        query = Query.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Query.any_instance.stub(:save).and_return(false)
        put :update, {:id => query.to_param, :query => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested query" do
      query = Query.create! valid_attributes
      expect {
        delete :destroy, {:id => query.to_param}, valid_session
      }.to change(Query, :count).by(-1)
    end

    it "redirects to the queries list" do
      query = Query.create! valid_attributes
      delete :destroy, {:id => query.to_param}, valid_session
      response.should redirect_to(queries_url)
    end
  end

end
