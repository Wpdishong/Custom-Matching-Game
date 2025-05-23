class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  validates :title, presence: true
  validates :image, presence: true
  
  # Ensure image is an image file
  validate :acceptable_image
  
  private
  
  def acceptable_image
    return unless image.attached?
    
    unless image.blob.byte_size <= 5.megabyte
      errors.add(:image, "is too big (should be less than 5MB)")
    end
    
    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(image.content_type)
      errors.add(:image, "must be a JPEG or PNG")
    end
  end
end
