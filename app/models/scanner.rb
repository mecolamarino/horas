class Scanner < ActiveRecord::Base
  attr_accessible :mark_id, :modelo
  belongs_to :mark
  has_many :computers

end
