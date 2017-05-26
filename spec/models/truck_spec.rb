require 'rails_helper'

RSpec.describe Truck, type: :model do
  let(:truck ) { Truck.new() }

  describe '.price' do
    context 'when the truck does not have mud in the bed' do
      let(:truck ) { Truck.new(muddy: false) }

      it 'returns 10' do
        expect(truck.price).to eq(10)
      end
    end

    context 'when the truck has mud in the bed' do
      let(:truck ) { Truck.new(muddy: true) }

      it 'returns 12' do
        expect(truck.price).to eq(12)
      end
    end
  end
end
