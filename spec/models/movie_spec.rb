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

require 'rails_helper'

RSpec.describe Movie, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
