class Calcu < ApplicationRecord
  has_many :cajons
  belongs_to :user
end
