old_inventory = File.open("code/inventory/old-inventory.txt").readlines
new_inventory = File.open("code/inventory/new-inventory.txt").readlines


new_count = (new_inventory - old_inventory).length
old_count = (old_inventory - new_inventory).length


puts 'The following files bave been added:'
puts new_inventory - old_inventory
puts "The total number of new files: #{new_count}"

puts ''
puts 'The following files have been deleted:'
puts old_inventory - new_inventory
puts "The total number of deleted files: #{old_count}"
puts ''
puts "The number of common files:  #{(new_inventory & old_inventory).length}"



