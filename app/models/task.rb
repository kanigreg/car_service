class Task < ApplicationRecord
  belongs_to :service
  belongs_to :performer
  belongs_to :order
end
