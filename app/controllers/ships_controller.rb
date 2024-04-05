class ShipsController < ApplicationController
  before_action :set_ship, only: %i[ show edit update destroy ]

  # GET /ships or /ships.json
  def index
    @ships = Ship.all
  end

  # GET /ships/1 or /ships/1.json
  def show
  end

  # GET /ships/new
  def new
    @ship = Ship.new
  end

  # GET /ships/1/edit
  def edit
  end

  # POST /ships or /ships.json
  def create
    @ship = Ship.new(ship_params)

    respond_to do |format|
      if @ship.save
        format.html { redirect_to ship_url(@ship), notice: "Ship was successfully created." }
        format.json { render :show, status: :created, location: @ship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ships/1 or /ships/1.json
  def update
    respond_to do |format|
      if @ship.update(ship_params)
        format.html { redirect_to ship_url(@ship), notice: "Ship was successfully updated." }
        format.json { render :show, status: :ok, location: @ship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ships/1 or /ships/1.json
  def destroy
    @ship.destroy!

    respond_to do |format|
      format.html { redirect_to ships_url, notice: "Ship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship
      @ship = Ship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ship_params
      params.require(:ship).permit(:name, :health, :comment, :x_location, :y_location)
    end
end
