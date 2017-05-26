class CarWash < SimpleDelegator
  def wash
    @wash ||= self.washes.create(price: price)
  end

  private

  def vehicle
    __getobj__
  end

  def price
    self.price * discount
  end

  def discount
    times_washed == 2 ? 0.5 : 1
  end

  def times_washed
    vehicle.class.where(license_plate: self.license_plate).count
  end
end
