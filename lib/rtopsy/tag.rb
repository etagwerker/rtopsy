# This is the tag class for the topsy library. 
# A Tag instance has the following attributes:
#            "url" : "http://topsy.com/s?q=current",
#            "name" : "current"
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/tags
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/rtopsy
module Topsy
  
  class Tag
    attr_accessor :url, :name
    
    def to_s
      "Topsy Tag: #{name}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
