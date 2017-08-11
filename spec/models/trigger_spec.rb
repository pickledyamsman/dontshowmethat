# == Schema Information
#
# Table name: triggers
#
#  id                :integer          not null, primary key
#  name              :string
#  user_triggers_id  :integer
#  movie_triggers_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Trigger, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
