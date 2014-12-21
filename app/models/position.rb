class Position
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  field :status, type: String
end
