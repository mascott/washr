require 'rails_helper'

RSpec.describe CarWash, type: :model do
  let(:license_plate) { "1234" }
  let(:car) { Car.create(license_plate: license_plate) }
  let(:car_wash) { CarWash.new(car) }
  let(:full_price) { 5 }
  let(:discounted_price) { 2.5 }

  describe '.wash' do
    it 'creates a new wash' do
      expect{ car_wash.wash }.to change{ Wash.count }.by(1)
    end
  end


  describe '.price' do
    context 'when the car has not been washed before' do

      it 'discount is applied' do
        expect(car_wash.price).to eq(full_price)
      end
    end

    context 'when the car has been washed before' do
      before { Car.create(license_plate: license_plate) }

      it 'discount is applied' do
        expect(car_wash.price).to eq(discounted_price)
      end
    end
  end
end
