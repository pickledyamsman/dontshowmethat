class UserTriggersController < ApplicationController
  before_action :set_user_trigger, only: [:show, :edit, :update, :destroy]

  # GET /user_triggers
  # GET /user_triggers.json
  def index
    @user_triggers = UserTrigger.all
  end

  # GET /user_triggers/1
  # GET /user_triggers/1.json
  def show
  end

  # GET /user_triggers/new
  def new
    @user_trigger = UserTrigger.new
  end

  # GET /user_triggers/1/edit
  def edit
  end

  # POST /user_triggers
  # POST /user_triggers.json
  def create
    @user_trigger = UserTrigger.new(user_trigger_params)

    respond_to do |format|
      if @user_trigger.save
        format.html { redirect_to @user_trigger, notice: 'User trigger was successfully created.' }
        format.json { render :show, status: :created, location: @user_trigger }
      else
        format.html { render :new }
        format.json { render json: @user_trigger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_triggers/1
  # PATCH/PUT /user_triggers/1.json
  def update
    respond_to do |format|
      if @user_trigger.update(user_trigger_params)
        format.html { redirect_to @user_trigger, notice: 'User trigger was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_trigger }
      else
        format.html { render :edit }
        format.json { render json: @user_trigger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_triggers/1
  # DELETE /user_triggers/1.json
  def destroy
    @user_trigger.destroy
    respond_to do |format|
      format.html { redirect_to user_triggers_url, notice: 'User trigger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_trigger
      @user_trigger = UserTrigger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_trigger_params
      params.fetch(:user_trigger, {})
    end
end
