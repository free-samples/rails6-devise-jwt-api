class Status < ApplicationRecord
  belongs_to :status_type
  scope :active, -> { where(name: 'active') }
  scope :inactive, -> { where(name: 'inactive') }

  def self.active_status
    active.first
  end

  def self.inactive_status
    inactive.first
  end
end
