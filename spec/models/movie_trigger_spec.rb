# == Schema Information
#
# Table name: movie_triggers
#
#  id          :integer          not null, primary key
#  movies_id   :integer
#  triggers_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe MovieTrigger, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
