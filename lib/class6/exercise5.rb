#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` and `load` methods with your solutions from exercise 4.
#
# Write a program that, when given a key, displays the matching key-value pair.
#
# For example:
#
#   $ ruby exercise5.rb name
#   Found 1 key-value pair in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#   :name => "George Harrison"
#
# And if no matching key exists, it needs to display an error message:
#
#   $ ruby exercise5.rb pet
#   Could't find key :pet in /Users/tim/sea-c21-ruby/lib/class6/database.yml
#
# TIP: How do you fetch a value with a key from a Hash?

require 'yaml'

def database
  File.absolute_path('../database.yml', __FILE__)
end

def load
  YAML.load(File.read(database))
end

def find(key)
  load[key.to_sym]
end

input = ARGV[0]

abort 'Usage: exercise4.rb KEY' unless input

result = find(input)

if result
  puts "Found 1 key-value pair in #{database}"
  puts ":#{input} => #{result.inspect}"
else
  puts "Could't find key :#{input} in #{database}"
end
