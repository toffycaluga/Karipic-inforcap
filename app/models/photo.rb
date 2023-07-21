class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :photo do |attachable|
    attachable.variant :thumb,resize_to_limit:[200,300]
  end
end
