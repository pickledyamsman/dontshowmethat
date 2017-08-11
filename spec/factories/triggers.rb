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

FactoryGirl.define do
  factory :trigger do
    
  end
end
