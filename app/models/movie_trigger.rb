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

class MovieTrigger < ApplicationRecord
  belongs_to :movie
  belongs_to :trigger
end
