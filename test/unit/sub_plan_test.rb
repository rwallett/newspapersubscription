# == Schema Information
#
# Table name: sub_plans
#
#  id           :integer          not null, primary key
#  price        :float
#  daily        :boolean
#  newspaper_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class SubPlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
