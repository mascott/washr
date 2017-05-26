class Wash < ApplicationRecord
  belongs_to :washable, polymorphic: true

  delegate :license_plate, to: :washable
end
