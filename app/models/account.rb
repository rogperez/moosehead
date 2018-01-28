class Account < ActiveRecord::Base
  has_many :configurables
end
