class Service < ApplicationRecord
  has_many :tasks, dependent: :nullify
  belongs_to :service_category

  validates :name, presence: true
end
