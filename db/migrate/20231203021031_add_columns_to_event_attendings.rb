class AddColumnsToEventAttendings < ActiveRecord::Migration[7.1]
  def change
    add_reference :event_attendings, :attendee, null: false, foreign_key: { to_table: :users }
    add_reference :event_attendings, :event, null: false, foreign_key: true
    add_reference :event_attendings, :creator, null: false, foreign_key: { to_table: :users }
  end
end
