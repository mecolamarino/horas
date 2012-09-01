class System < ActiveRecord::Base
  attr_accessible :nombre, :version
  has_many :computers

end
