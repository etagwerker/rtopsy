# This is the trend class for the topsy library. 
# A Trend instance has the following attributes:
#            "url" : "http://topsy.com/s?q=dominick",
#            "term" : "dominick"
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/trending
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/rtopsy
module Topsy
  
  class Trend
    attr_accessor :url, :term
    
    def to_s
      "Topsy Trend: #{term}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
