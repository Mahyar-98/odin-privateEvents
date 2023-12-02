class EventAttending < ApplicationRecord
    belongs_to :event
    belongs_to :attendee, class_name: "User"
    belongs_to :creator, class_name: "User"
end
