class GameUsersController < ApplicationController
  before_action :set_gameuser, only: [:show, :edit, :update, :destroy]

  # GET /gameusers
  # GET /gameusers.json
  def index
    @gameusers = Gameuser.all
  end

  # GET /gameusers/1
  # GET /gameusers/1.json
  def show
  end

  # GET /gameusers/new
  def new
    @gameuser = Gameuser.new
  end

  # GET /gameusers/1/edit
  def edit
  end

  # POST /gameusers
  # POST /gameusers.json
  def create
    @gameuser = Gameuser.new(gameuser_params)

    respond_to do |format|
      if @gameuser.save
        format.html { redirect_to @gameuser, notice: 'Gameuser was successfully created.' }
        format.json { render :show, status: :created, location: @gameuser }
      else
        format.html { render :new }
        format.json { render json: @gameuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gameusers/1
  # PATCH/PUT /gameusers/1.json
  def update
    respond_to do |format|
      if @gameuser.update(gameuser_params)
        format.html { redirect_to @gameuser, notice: 'Gameuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @gameuser }
      else
        format.html { render :edit }
        format.json { render json: @gameuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gameusers/1
  # DELETE /gameusers/1.json
  def destroy
    @gameuser.destroy
    respond_to do |format|
      format.html { redirect_to gameusers_url, notice: 'Gameuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameuser
      @gameuser = Gameuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameuser_params
      params.fetch(:gameuser, {})
    end
end
