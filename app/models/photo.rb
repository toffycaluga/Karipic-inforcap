# == Schema Information
#
# Table name: photos
#
#  id         :bigint           not null, primary key
#  caption    :text
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :photo do |attachable|
    attachable.variant :thumb,resize_to_limit:[200,300]
  end
end
