class ServiceCategory < ApplicationRecord
  has_many :services, dependent: :nullify

  validates :name, presence: true

  def to_s
    name
  end
end
