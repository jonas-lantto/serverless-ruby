#!./ruby/bin/ruby

require 'json'

# non-native gem
require 'faker'

puts JSON.generate(
  statusCode: 200,
  body: "Hello, #{Faker::Name.name}, from Ruby"
)
