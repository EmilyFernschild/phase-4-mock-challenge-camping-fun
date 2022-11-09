class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups
    validates_presence_of :name, :age
    validates :age, inclusion: { in: 8..18 } 

end
