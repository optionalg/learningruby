old_inventory = File.open("code/inventory/old-inventory.txt").readlines
new_inventory = File.open("code/inventory/new-inventory.txt").readlines

new_count 			= (new_inventory - old_inventory).length
old_count 			= (old_inventory - new_inventory).length


def unchangedCount new_inventory, old_inventory
	unchanged = []

	new_inventory.each do |newfile|
		old_inventory.each do |oldfile|
			if newfile == oldfile
				unchanged.push(newfile)
			end
	  end
	end
	unchanged.length
end


puts 'The following files bave been added:'
puts new_inventory - old_inventory
puts "The total number of new files: #{new_count}"

puts ''
puts 'The following files have been deleted:'
puts old_inventory - new_inventory
puts "The total number of deleted files: #{old_count}"



puts ''
puts "The total number of files unchanged:#{ unchangedCount(new_inventory,old_inventory) }"