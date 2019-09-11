class Idea < ApplicationRecord
  belongs_to :consumer, optional: true
  belongs_to :business, optional: true
end
