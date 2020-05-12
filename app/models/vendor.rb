class Vendor < ApplicationRecord
  validates :title, presence: true
  acts_as_paranoid
end
