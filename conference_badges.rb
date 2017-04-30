def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each {|attendee| badges << badge_maker(attendee)}
  badges
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each_with_index do |attendee, index|
    room_assignments << "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
  end
  room_assignments
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  badges.each { |badge| puts badge }

  rooms = assign_rooms(attendees)
  rooms.each { |room| puts room }
end
