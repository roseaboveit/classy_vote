class QueriesController < ApplicationController
  before_action :set_query, only: [:show, :edit, :update, :destroy]

  # GET /queries
  # GET /queries.json
  def index
    @queries = Query.all
  end

  # GET /queries/1
  # GET /queries/1.json
  def show
    @query = Query.find(params[:id])
  end

  # GET /queries/new
  def new
    @query = Query.new
  end

  # GET /queries/1/edit
  def edit
  end

  def yea
    @query = Query.find(params["query_id"])
    @query.yea += 1
    @query.save
    update_query_user
    redirect_to profile_path
  end

  def nay
    @query = Query.find(params["query_id"])
    @query.nay += 1
    @query.save
    update_query_user
    redirect_to profile_path
  end

  def update_query_user
    @query = Query.find(params["query_id"])
    @user = User.find(current_user.id)
    @query.answered_users << @user
    flash[:notice] = 'Your Voice has been Heard.'
  end

  # POST /queries
  # POST /queries.json
  def create
    @query = Query.new(query_params)
    @query.user_id = current_user.id
    @query.yea = 0
    @query.nay = 0

    respond_to do |format|
      if @query.save
        format.html { redirect_to @query, notice: 'Query was successfully created.' }
        format.json { render action: 'show', status: :created, location: @query }
      else
        format.html { render action: 'new' }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queries/1
  # PATCH/PUT /queries/1.json
  def update
    respond_to do |format|
      if @query.update(query_params)
        format.html { redirect_to @query, notice: 'Query was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queries/1
  # DELETE /queries/1.json
  def destroy
    @query.destroy
    respond_to do |format|
      format.html { redirect_to queries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_query
      @query = Query.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def query_params
      params.require(:query).permit(:id, :user_id, :question, :yea, :nay)
    end

    def query_user_params
      params.require(:query_user).permit(:id, :user_id, :query_id)
    end
end
