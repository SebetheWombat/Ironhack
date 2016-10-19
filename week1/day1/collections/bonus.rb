#Each with index
[1,2,3].each_with_index {|x,i| puts "#{i}:#{x}"

#Select: Creates new array with items you don't want removed
[5,2,3].select {|x| x.odd?}

#Grep similiar to select but uses regular expresions to only select items that fit a pattern
["casa","masa","pepino"].grep(/as/)

#Find: Allows you to search an array for an item (returns only the 1st item!)
[5,2,3].find {|x| x.odd?}

#sort_by is used with an object to sort by a particular variable
[banana,rice,apples].sort_by {|i| i.price}

#Check out the Enumerable Module!