# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  link_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ApplicationRecord
  belongs_to :user, validate: true
  belongs_to :link, validate: true
end
