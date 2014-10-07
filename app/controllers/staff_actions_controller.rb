class StaffActionsController < ApplicationController
  before_action :set_staff_action, only: [:show, :edit, :update, :destroy]

  # GET /staff_actions
  # GET /staff_actions.json
  def index
    @staff_actions = StaffAction.all
  end

  # GET /staff_actions/1
  # GET /staff_actions/1.json
  def show
  end

  # GET /staff_actions/new
  def new
    @staff_action = StaffAction.new
  end

  # GET /staff_actions/1/edit
  def edit
  end

  # POST /staff_actions
  # POST /staff_actions.json
  def create
    @staff_action = StaffAction.new(staff_action_params)

    respond_to do |format|
      if @staff_action.save
        format.html { redirect_to @staff_action, notice: 'Staff action was successfully created.' }
        format.json { render :show, status: :created, location: @staff_action }
      else
        format.html { render :new }
        format.json { render json: @staff_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_actions/1
  # PATCH/PUT /staff_actions/1.json
  def update
    respond_to do |format|
      if @staff_action.update(staff_action_params)
        format.html { redirect_to @staff_action, notice: 'Staff action was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff_action }
      else
        format.html { render :edit }
        format.json { render json: @staff_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_actions/1
  # DELETE /staff_actions/1.json
  def destroy
    @staff_action.destroy
    respond_to do |format|
      format.html { redirect_to staff_actions_url, notice: 'Staff action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_action
      @staff_action = StaffAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_action_params
      params[:staff_action]
    end
end
