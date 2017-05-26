class Truck < ApplicationRecord
  include Vehicle

  validates :tailgate_up, acceptance: { message: 'Tailgates must be up, please ask the customer to raise their tailgate.' }
end
