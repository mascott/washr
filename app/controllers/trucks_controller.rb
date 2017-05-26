class TrucksController < ApplicationController

  # GET /trucks
  # GET /trucks.json
  def index
    @trucks = Truck.all
  end

  # GET /trucks/new
  def new
    @truck = Truck.new
  end

  # POST /trucks
  # POST /trucks.json
  def create
    @truck = Truck.new(truck_params)

    respond_to do |format|
      if @truck.save
        CarWash.new(@truck).wash
        format.html { redirect_to washes_path, notice: 'Truck was successfully washed.' }
      else
        format.html { render :new }
      end
    end
  end

  private

    def truck_params
      params.require(:truck).permit(:license_plate, :tailgate_up, :muddy)
    end
end
