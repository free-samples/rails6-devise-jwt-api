class Company < ApplicationRecord
  belongs_to :status
  mount_base64_uploader :logo, LogoUploader
  scope :active, -> { where(status: Status.active_status) }
end
