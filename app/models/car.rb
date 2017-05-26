class Car < ApplicationRecord
  include Vehicle

  has_many :washes, as: :washable, dependent: :destroy

  def price
    5
  end
end
