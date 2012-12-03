#!/usr/bin/env ruby

text_1 = File.read("#{ARGV[0]}")
text_2 = File.read("#{ARGV[1]}")

f1 = File.new("#{ARGV[0]}", "w")
f1.puts text_2
f1.close

f2 = File.new("#{ARGV[1]}", "w")
f2.puts text_1
f2.close

