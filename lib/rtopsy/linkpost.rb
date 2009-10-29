# This is the linkpost class for the topsy library. 
# A Linkpost has the following attributes:
#            "permalink_url" : "http://twitter.com/barackobama/status/3569838653",
#            "target" : target instance
#            "date" : "1251337427",
#            "content" : "Highlights from the tribute to Sen. Kennedy's life and 
#                accomplishments from last year's Democratic National Convention: http://bit.ly/TJcyr",
#            "date_alpha" : "3 hours ago"
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/linkposts
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/rtopsy
module Topsy
  
  class Linkpost
    attr_accessor :permalink_url, :target, :date, :content, :date_alpha
    
    def to_s
      "Topsy Linkpost: #{permalink_url}, @#{content}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        if key == 'target'
          instance_variable_set("@#{key}", Target.new(value))
        else
          instance_variable_set("@#{key}", value)
        end
        
      end
    end
  end
end
