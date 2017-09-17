# Base controller for movie_triggers
class MovieTriggersController < ApplicationController
  before_action :set_movie_trigger, only: %i[show edit update destroy]

  # GET /movie_triggers
  # GET /movie_triggers.json
  def index
    @movie_triggers = MovieTrigger.all
  end

  # GET /movie_triggers/1
  # GET /movie_triggers/1.json
  def show
  end

  # GET /movie_triggers/new
  def new
    @movie_trigger = MovieTrigger.new
  end

  # GET /movie_triggers/1/edit
  def edit
  end

  # POST /movie_triggers
  # POST /movie_triggers.json
  def create
    @movie_trigger = MovieTrigger.new(movie_trigger_params)

    respond_to do |format|
      if @movie_trigger.save
        format.html { redirect_to @movie_trigger, notice: 'Movie trigger was successfully created.' }
        format.json { render :show, status: :created, location: @movie_trigger }
      else
        format.html { render :new }
        format.json { render json: @movie_trigger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_triggers/1
  # PATCH/PUT /movie_triggers/1.json
  def update
    respond_to do |format|
      if @movie_trigger.update(movie_trigger_params)
        format.html { redirect_to @movie_trigger, notice: 'Movie trigger was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_trigger }
      else
        format.html { render :edit }
        format.json { render json: @movie_trigger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_triggers/1
  # DELETE /movie_triggers/1.json
  def destroy
    @movie_trigger.destroy
    respond_to do |format|
      format.html { redirect_to movie_triggers_url, notice: 'Movie trigger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_movie_trigger
    @movie_trigger = MovieTrigger.find(params[:id])
  end

  def movie_trigger_params
    params.fetch(:movie_trigger, {})
  end
end
