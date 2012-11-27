record = {name: "Satish", email: "mail@satishtalim.com", phone: "919371006659"}

puts <<-EOS % record
record[:name]  = '%{name}'
record[:email] = '%{email}'
record[:phone] = '%{phone}'
EOS
