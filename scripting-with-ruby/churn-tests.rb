#---
# Excerpted from "Everyday Scripting in Ruby"
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/bmsft for more book information.
#---

require "test/unit"
require_relative "churn"    

class ChurnTests < Test::Unit::TestCase 

  def test_month_before_is_28_days
    assert_equal(Time.local(2005, 1, 1),
                 month_before(Time.local(2005, 1, 29)))
  end

  def test_header_format1
  	assert_equal('Changes since 2005-08-05:',
  		header(Time.local(2005,8,5)))
  end

  def test_header_format2
  	assert_equal('Changes since 2005-08-05:',
  		header(month_before(Time.local(2005,9,2))))
  end

  def test_normal_subsystem_line_format
    assert_equal('         audit ********* (45)',  
      subsystem_line("audit", 45))
  end

  def test_asterix_for_divided_by_five
    assert_equal('-',asterix_for(0))
    assert_equal('****',asterix_for(18))
  end

    def test_subversion_log_can_have_no_changes
    assert_equal(0, extract_change_count_from("-------------------------------------\
--------------------------------------------\n"))
  end


end
