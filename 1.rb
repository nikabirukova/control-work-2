require 'fiber'

def perform_calculation(value)
  value * value
end

results = []
actors = (1..5).map do |i|
  Ractor.new(i) do |value|
    perform_calculation(value) 
  end
end

actors.each do |actor|
  results << actor.take
end

puts "Результати обчислень: #{results}"
