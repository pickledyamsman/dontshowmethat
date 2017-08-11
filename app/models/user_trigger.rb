# == Schema Information
#
# Table name: user_triggers
#
#  id          :integer          not null, primary key
#  users_id    :integer
#  triggers_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class UserTrigger < ApplicationRecord
  belongs_to :user
  belongs_to :trigger
end
