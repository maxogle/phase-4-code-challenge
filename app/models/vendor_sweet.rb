class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validates :price, numericality: {:greater_than_or_euqal_to 1}
    validates :price, presence: true
end
