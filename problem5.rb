#!/usr/bin/env ruby

def palindrome?(str)
  str == str.reverse
end

def find_answer
  a = (900..999).step(1).to_a
  a.reverse!
  puts a.to_s 
  b = a.combination(2).to_a
  puts b.to_s

  b.each{ |pair|
    ans = pair.first * pair.last
    if palindrome? ans.to_s
      puts "#{pair.first} x #{pair.last} = #{ans}"
    end
  }
end

find_answer
