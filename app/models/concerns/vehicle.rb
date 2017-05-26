module Vehicle
  extend ActiveSupport::Concern

  STOLEN_PLATES = ["1111111"]

  included do
    validates_presence_of :license_plate
    validates :license_plate, exclusion: { in: STOLEN_PLATES, message: "This vehicle is stolen, please report to the authorities" }
  end
end
