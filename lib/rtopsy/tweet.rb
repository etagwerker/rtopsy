# This is the tweet class for the topsy library. 
# A Tweet instance has the following attributes:
#            "permalink_url" : "http://twitter.com/imadnaffa/status/3565855201",
#            "date" : "1251324809",
#            "content" : "TOPSY - A search engine powered by tweets: http://topsy.com (this Search Engine can 
#                        be powerful for sifting through Twitter- love it)!",
#            "type" : "tweet",
#            "author" : author instance
#            "date_alpha" : "6 hours ago"
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/trackbacks
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/rtopsy
module Topsy
  
  class Tweet
    attr_accessor :permalink_url, :date, :content, :type, :author, :date_alpha
    
    def to_s
      "Topsy Tweet: #{permalink_url}, #{content}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        if key == 'author'
          instance_variable_set("@#{key}", Author.new(value))
        else
          instance_variable_set("@#{key}", value)
        end
      end
    end
  end
end
