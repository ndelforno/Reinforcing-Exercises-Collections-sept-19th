hash = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

room_201 = hash[:data][:rooms][1][:capacity]
p room_201


def event_201(hash)
  events =[]
  hash[:data][:events].each do |num|
    if num[:room_id] == 1
      events << num
    end
  end
  return events
end

events = event_201(hash)

events.each do |num|
  if num[:attendees] < room_201
    puts "ok #{num}"
  end
end
