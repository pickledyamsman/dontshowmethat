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

require 'rails_helper'

RSpec.describe UserTrigger, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
