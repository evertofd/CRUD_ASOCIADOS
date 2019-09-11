class Employee < ApplicationRecord
  belongs_to :company
  belongs_to :area
end
