class Screen < ActiveRecord::Base
  attr_accessible :mark_id, :modelo, :size_id, :type_id
  belongs_to :size
  belongs_to :mark
  belongs_to :type
  has_many :computers
end
