class Signup < ApplicationRecord
  validates :time, inclusion: 0..23
    #need to do something about the hour of day for this activity?
  belongs_to :camper
  belongs_to :activity
end
