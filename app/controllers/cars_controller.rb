class CarsController < ApplicationController

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

   # GET /cars/new
  def new
    @car = Car.new
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        CarWash.new(@car).wash
        format.html { redirect_to washes_path, notice: 'Car was successfully washed.' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def car_params
      params.require(:car).permit(:license_plate)
    end
end
