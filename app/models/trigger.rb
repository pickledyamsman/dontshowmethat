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

class Trigger < ApplicationRecord
  has_many :movie_triggers
  has_many :user_triggers
end
