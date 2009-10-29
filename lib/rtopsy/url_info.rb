# This is the url_info class for the topsy library. 
# An UrlInfo has the following attributes:
#      "topsy_trackback_url" : "http://topsy.com/tb/twitter.com/",
#      "oneforty" : "Twitter: What are you doing? http://twurl.nl/pd8k44",
#      "url" : "http://twitter.com/",
#      "title" : "Twitter: What are you doing?",
#      "trackback_total" : "24152",
#      "description" : "Social networking and microblogging service utilising instant messaging, SMS or a web interface.",
#      "description_attribution" : "From DMOZ"
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/urlinfo
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/rtopsy
module Topsy
  
  class UrlInfo
    attr_accessor :topsy_trackback_url, :oneforty, :url, :title, :trackback_total, :description, :description_attribution
    
    def to_s
      "Topsy UrlInfo: #{url}, @#{topsy_trackback_url}, #{trackback_total} total"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
