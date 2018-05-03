# == Schema Information
#
# Table name: links
#
#  id          :integer          not null, primary key
#  url         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Link < ApplicationRecord
  belongs_to :user, optional: true
  has_many :votes

  validates :url, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 5 }
end
