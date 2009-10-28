# This is the linkpost_count class for the topsy library. 
# A LinkpostCount has the following attributes:
#        "contains" : 0,
#        "all" : 46
# 
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/linkpostcount
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/ruby-topsy/web/api-documentation
module Topsy
  
  class LinkpostCount
    attr_accessor :contains, :all
    
    def to_s
      "Topsy LinkpostCount: #{all}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
