# p013stromp.rb
# String#eql?, tests two strings for indentical content
# It returns the same result as ==
# String#equal?, tests whether two strings are the same object

s1 = 'Jonathan'
s2 = 'Jonathan'
s3 = s1
if s1 == s2
  puts 'both Strings have indentical content'
else
  puts 'Both Strings do not have identical content'
end
if s1.eql? (s2)
  puts 'Both Strings have identical content'
else
  puts 'Both Strings do not have identical content'
end
if s1.equal?(s2)
  puts 'Two Strings are identical objects'
else
  puts 'Two Strings are not identical objects'
end
if s1.equal?(s3)
  puts 'Two Strings are identical objects'
else
  puts 'Two STrings are not identical objects'
end

