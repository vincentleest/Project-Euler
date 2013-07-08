#!/usr/bin/env ruby

a = (0..1000).step(3).to_a
b = (0..999).step(5).to_a
sol = a|b
puts sol.to_s
puts sol.inject(:+)
