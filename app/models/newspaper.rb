# == Schema Information
#
# Table name: newspapers
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  editor     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newspaper < ActiveRecord::Base
  attr_accessible :editor, :title, :sub_plans_attributes
  has_many :sub_plans, :inverse_of => :newspaper
  accepts_nested_attributes_for :sub_plans
end
