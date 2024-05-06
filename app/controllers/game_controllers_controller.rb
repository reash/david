class GameControllersController < ApplicationController
  before_action :set_game_controller, only: %i[ show edit update destroy ]

  # GET /game_controllers or /game_controllers.json
  def index
    @game_controllers = GameController.all
  end

  # GET /game_controllers/1 or /game_controllers/1.json
  def show
  end

  # GET /game_controllers/new
  def new
    @game_controller = GameController.new
  end

  # GET /game_controllers/1/edit
  def edit
  end

  # POST /game_controllers or /game_controllers.json
  def create
    @game_controller = GameController.new(game_controller_params)

    respond_to do |format|
      if @game_controller.save
        format.html { redirect_to game_controller_url(@game_controller), notice: "Game controller was successfully created." }
        format.json { render :show, status: :created, location: @game_controller }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_controllers/1 or /game_controllers/1.json
  def update
    respond_to do |format|
      if @game_controller.update(game_controller_params)
        format.html { redirect_to game_controller_url(@game_controller), notice: "Game controller was successfully updated." }
        format.json { render :show, status: :ok, location: @game_controller }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_controllers/1 or /game_controllers/1.json
  def destroy
    @game_controller.destroy!

    respond_to do |format|
      format.html { redirect_to game_controllers_url, notice: "Game controller was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_controller
      @game_controller = GameController.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_controller_params
      params.require(:game_controller).permit(:go, :comment)
    end
end
