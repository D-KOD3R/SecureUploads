class SecureFile < ApplicationRecord
  has_secure_token :guid

  # uploader config
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  # validations
  validates :name, :attachment, presence: true # Make sure the owner's name is present.

  #callbacks
  after_commit :remove_attachment!, on: :destroy

  # associations
  belongs_to :user
end
