class Business < ApplicationRecord
  self.inheritance_column = :_type_disabled
  belongs_to :business_user
end
