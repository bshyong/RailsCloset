class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include CarrierWave::MimeTypes
  include CarrierWaveDirect::Uploader

  process :set_content_type
  storage (Rails.env.production? ? :fog : :file)

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  end

  version :thumb do
    process resize_to_fill: [200, 200]
  end
end
