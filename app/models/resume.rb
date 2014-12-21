class Resume
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  
  mount_uploader :avatar, AvatarUploader
end
