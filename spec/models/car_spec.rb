require 'rails_helper'

RSpec.describe Car, type: :model do
  let(:car) { Car.new() }

  describe '.price' do
    it 'returns 5' do
      expect(car.price).to eq(5)
    end
  end
end
