class User < ActiveRecord::Base
attr_accessible :name, :login, :password, :password_confirmation
acts_as_authentic do |c|
  end # block optional
has_one :client
has_one :owner
def role_symbols
   return [:owner] if owner
   return [:client] if client
end
end

