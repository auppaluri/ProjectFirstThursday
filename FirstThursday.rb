require 'date'

# Declare/Assign Vars
now = DateTime.now
date = Date.new(now.year, now.month,now.day)+1

# Fetch next months 1st day
while date.day!=1
date = date+1
end

#Fetch first Thursday of the next month
while date.wday != 4 
   date = date + 1
end

#format the output
puts date.strftime('%A, %b %d, %Y')