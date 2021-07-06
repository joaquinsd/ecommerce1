class Variant < ApplicationRecord
  belongs_to :size
  belongs_to :color
  belongs_to :product

  default_scope { where('stock > 0') }
end
