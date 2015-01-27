class Product
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  field :type_id, type: String, default: 0 #[0 'xinpin', 1 'teshe', 2 'mingxing']

  mount_uploader :avatar, AvatarUploader
end
