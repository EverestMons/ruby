class Dojo < ApplicationRecord
  has_many :dragons, class_name: 'Ninja'
  validates :name, :city, :state, presence:true
  validates :state, length: { is:2 }

end
