module ClothingItem
  extend ActiveSupport::Concern

  included do
    mount_uploader :image, ImageUploader
    belongs_to :brand
    belongs_to :type
    belongs_to :color
    has_and_belongs_to_many :outfits
  end
end
