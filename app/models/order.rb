class Order < ApplicationRecord
  has_many :tasks, dependent: :nullify

  validates :client_name, presence: true
end
