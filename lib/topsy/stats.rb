# This is the stats class for the topsy library. 
# A Stats instance has the following attributes:
#      "topsy_trackback_url" : "http://topsy.com/tb/topsy.com/",
#      "contains" : "1931",
#      "influential" : "874",
#      "all" : "1931"
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/stats
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/ruby-topsy/web/api-documentation
module Topsy
  
  class Stats
    attr_accessor :topsy_trackback_url, :contains, :influential, :all
    
    def to_s
      "Topsy Stats: #{topsy_trackback_url}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
