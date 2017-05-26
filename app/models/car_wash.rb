class CarWash < SimpleDelegator
  def wash
    @wash ||= Wash.create(price: price, washable: vehicle)
  end

  def price
    vehicle.price * discount
  end

  private

  def vehicle
    __getobj__
  end

  def discount
    times_washed == 2 ? 0.5 : 1
  end

  def times_washed
    vehicle.class.where(license_plate: vehicle.license_plate).count
  end
end
