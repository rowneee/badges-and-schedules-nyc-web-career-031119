def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.collect do |name|
  badge_maker(name)
  end
end

def assign_rooms(speakers)
  rooms = []
  speakers.each_with_index do |speaker, room|
  rooms << "Hello, #{speaker}! You'll be assigned to room #{room+1}!"
  end
  return rooms
end

def printer(names)
  badges = batch_badge_creator(names)
  rooms = assign_rooms(names)
  badges.each { |badge| puts badge }
  rooms.each {|room| puts room}
end