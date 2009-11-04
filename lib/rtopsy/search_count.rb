# This is the search_count class for the topsy library. 
# A SearchCount has the following attributes:
#      "w" : 2085, - weekly
#      "h" : 6, - hourly
#      "a" : 572027, - annually
#      "d" : 330, - daily
#      "m" : 9122 - monthly
# 
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/searchcount (?)
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/rtopsy
module Topsy
  
  class SearchCount
    attr_accessor :w, :h, :a, :d, :m
    
    def to_s
      "Topsy SearchCount: #{all}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
