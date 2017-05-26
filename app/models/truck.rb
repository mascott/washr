class Truck < ApplicationRecord
  include Vehicle

  has_many :washes, as: :washable, dependent: :destroy

  validates :tailgate_up, acceptance: { message: 'Tailgates must be up, please ask the customer to raise their tailgate.' }


  def price
    10 + muddy_price
  end

  private

  def muddy_price
    muddy? ? 2 : 0
  end
end
