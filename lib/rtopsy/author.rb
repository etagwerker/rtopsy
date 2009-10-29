# This is the author class for the topsy library. 
# An Author has the following attributes:
#      "name" : "Barack Obama"
#      "url" : "http://twitter.com/barackobama",
#      "type" : "twitter",
#      "nick" : "barackobama",
#      "description" : "44th President of the United States",
#      "topsy_author_url" : "http://topsy.com/twitter/barackobama",
#      "influence_level" : "5" 
# 
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/authorinfo
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/rtopsy/web/api-documentation
module Topsy
  
  class Author
    attr_accessor :name, :url, :type, :nick, :description, :topsy_author_url, :influence_level, :hits
    
    def to_s
      "Topsy Author: #{name}, @#{nick}, #{topsy_author_url}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
