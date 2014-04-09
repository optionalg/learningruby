
def divide dividend, divisor
	# question mark is part of the method
	if !dividend.is_a?(Fixnum) || !divisor.is_a?(Fixnum)
		raise ArgumentError, "You'll need to provide 2 numbers"
  end

  if divisor == 0
  	raise StandardError, "You're trying to divide by 0"
 	end

  dividend/divisor

end

begin
	puts divide 5, 0
# capture Standard and Argument error
rescue StandardError => e 
	puts e.message
end