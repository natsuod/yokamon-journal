class Event < ApplicationRecord
  mount_uploader :e_image, ImageUploader
  belongs_to :user
end
