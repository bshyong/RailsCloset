class Outfit < ActiveRecord::Base
  has_and_belongs_to_many :shirts
  has_and_belongs_to_many :pants
  has_and_belongs_to_many :jackets
  has_and_belongs_to_many :ties, class_name: 'Tie'
end
