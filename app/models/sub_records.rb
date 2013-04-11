class SubRecords < ActiveRecord::Base
  belongs_to :user
  belongs_to :sub_plan
  # attr_accessible :title, :body
end
