class SecureFile < ApplicationRecord

  has_secure_token :guid

  # uploader config
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  # validations
  validates :name, :attachment, presence: true # Make sure the owner's name is present.

  #callbacks
  before_save :generate_tyny_url
  after_commit :remove_attachment!, on: :destroy

  # associations
  belongs_to :user

  private

  def generate_tyny_url
    self.tiny_url = TinyUrl.shorten(file_url, self.guid)
  end

  def file_url
    return self.attachment_url
  end
end

