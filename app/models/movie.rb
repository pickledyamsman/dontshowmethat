# == Schema Information
#
# Table name: movies
#
#  id                :integer          not null, primary key
#  title             :string
#  runtime           :integer
#  poster_path       :string
#  release_date      :string
#  release_status    :string
#  original_language :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  overview          :string
#  movie_triggers_id :integer
#

class Movie < ApplicationRecord
  has_many :movie_triggers
end
