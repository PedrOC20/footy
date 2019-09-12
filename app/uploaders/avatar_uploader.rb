class AvatarUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url(*args)
    ActionController::Base.helpers.asset_path("football-player-default.png")
  end
end
