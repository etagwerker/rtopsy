# This is the target class for the topsy library. 
# A Target has the following attributes:
#      "topsy_trackback_url" : "http://topsy.com/tb/my.barackobama.com/page/community/post/obamaforamerica/gGMPVm",
#      "url" : "http://my.barackobama.com/page/community/post/obamaforamerica/gGMPVm",
#      "trackback_total" : "43"
# 
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/linkposts
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/ruby-topsy/web/api-documentation
module Topsy
  
  class Target
    attr_accessor :topsy_trackback_url, :url, :trackback_total
    
    def to_s
      "Topsy Target: #{url}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
