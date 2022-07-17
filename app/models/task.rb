class Task < ApplicationRecord
  belongs_to :order
  belongs_to :service
  belongs_to :performer, optional: true

  def to_s
    "Service: #{service.name} | Performer: #{performer&.name.presence || 'unassigned'}"
  end
end
