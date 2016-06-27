class GameUsersController < ApplicationController
  before_action :set_game_user, only: [:show, :edit, :update, :destroy]

  # GET /gameusers
  # GET /gameusers.json
  def index
    @game_users = GameUser.all
  end

  # GET /gameusers/1
  # GET /gameusers/1.json
  def show
  end

  # GET /gameusers/new
  def new
    @game_user = GameUser.new
  end

  # GET /gameusers/1/edit
  def edit
  end

  # POST /gameusers
  # POST /gameusers.json
  def create
    @game_user = GameUser.new(game_user_params)

    respond_to do |format|
      if @game_user.save
        format.html { redirect_to @game_user, notice: 'GameUser was successfully created.' }
        format.json { render :show, status: :created, location: @game_user }
      else
        format.html { render :new }
        format.json { render json: @game_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gameusers/1
  # PATCH/PUT /gameusers/1.json
  def update
    respond_to do |format|
      if @game_user.update(game_user_params)
        format.html { redirect_to @game_user, notice: 'GameUser was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_user }
      else
        format.html { render :edit }
        format.json { render json: @game_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gameusers/1
  # DELETE /gameusers/1.json
  def destroy
    @gameuser.destroy
    respond_to do |format|
      format.html { redirect_to game_users_url, notice: 'GameUser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_user
      @game_user = GameUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_user_params
      params.fetch(:game_user, {})
    end
end
