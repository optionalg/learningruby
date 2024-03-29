#---
# Excerpted from "Everyday Scripting in Ruby"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/bmsft for more book information.
#---

def month_before(a_time)
	a_time - 28 * 24 * 60 * 60
end

def header(a_time)
	 a_time.strftime("Changes since %Y-%m-%d:")
end

def asterix_for(an_integer)
	if an_integer == 0
	 	'-'
	else 
	 '*' * (an_integer / 5.0).round
	end

	#return '*' * (an_integer / 5.0).round
end


def subsystem_line(susbsystem_name, change_count)
	asterix = asterix_for(change_count)

	"#{susbsystem_name.rjust(14)} #{asterix} (#{change_count})"
end

def change_count_for(name, start_date)
  extract_change_count_from(svn_log(name, start_date))
end


def extract_change_count_from(log_text)
	lines = log_text.split("\n")
	dashed_lines = lines.find_all do | line |
		line.include?('----')
	end

	dashed_lines.length - 1

end

def svn_log(subsystem, start_date)
  timespan = "--revision 'HEAD:{#{start_date}}'"
  root = "svn://rubyforge.org//var/svn/churn-demo"
  
  `svn log #{timespan} #{root}/#{subsystem}`
end



if $0 == __FILE__    #(1)
  subsystem_names = ['audit', 'fulfillment', 'persistence',    #(2)
                     'ui', 'util', 'inventory']
  start_date = month_before(Time.now)       #(3)

  puts header(start_date)                   #(4)
  subsystem_names.each do | name |
    puts subsystem_line(name, change_count_for(name,start_date)) #(5)  
  end
end
