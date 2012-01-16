require 'date'


# Declare/Assign Variables
now = DateTime.now

# Fetch next months first date
date = Date.new(now.year, now.month,now.day)+1
while date.day!=1
   date = date+1
end

#Fetch Next Thursday of the month
while date.wday != 4 
   date = date + 1
end

if date.day == 1
 dateSuffix = "st"
elsif date.day == 2
 dateSuffix = "nd"
elsif date.day == 3
 dateSuffix = "rd"
else
 dateSuffix = "th"
end

puts date.strftime('%A, %B %e' + dateSuffix + ', %Y')