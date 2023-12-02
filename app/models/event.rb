class Event < ApplicationRecord
    has_many :attendees, through: :event_attendings
    has_many :event_attendings
    belongs_to :host, class_name: "User"
end
