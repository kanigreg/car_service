class Order < ApplicationRecord
  has_many :tasks, dependent: :nullify

  accepts_nested_attributes_for :tasks

  validates :client_name, presence: true

  def to_s
    "Order ##{id}"
  end
end
