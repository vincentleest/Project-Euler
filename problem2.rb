#!/usr/bin/env ruby

def get_fibonaccis(n)
  vals = [0, 1]
  begin
    vals.push(vals[-1] + vals[-2]) 
  end while vals.last < n
  if vals.last > n
    vals.delete_at(-1)
  end
  vals
end

def find_answer
  fib = get_fibonaccis(4000000)
  fib.delete_if{|x| x.odd?}
  puts fib.to_s
  puts fib.inject(:+)
end

find_answer
