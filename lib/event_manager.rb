require 'csv'

puts 'Event Manager Is Running...'

contents = CSV.open(
  'event_attendees.csv', 
  headers: true,
  header_converters: :symbol
)
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  p "#{name} #{zipcode}"
end