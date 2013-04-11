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

class SubPlan < ActiveRecord::Base
  belongs_to :newspaper, :inverse_of => :sub_plans
  attr_accessible :daily, :price, :newspaper_id
end
