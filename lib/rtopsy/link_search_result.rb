# This is the link_search_result class for the topsy library. 
# A LinkSearchResult has the following attributes:
#            "trackback_permalink" : "http://twitter.com/ewerickson/status/3562164195",
#            "hits" : 38,
#            "trackback_total" : 157,
#            "topsy_trackback_url" : "http://topsy.com/tb/www.redstate.com/erick/2009/08/26/breaking-rumors-surface-that-leon-panetta-is-resigning/",
#            "url" : "http://www.redstate.com/erick/2009/08/26/breaking-rumors-surface-that-leon-panetta-is-resigning/",
#            "content" : "Panetta is rumored to have sent a resignation letter to Barack Obama today:  http://bit.ly/CDMg9",
#            "title" : "BREAKING: Rumors Surface That Leon Panetta is Resigning - Erickâs blog - RedState",
#            "score" : 0.75521481,
#            "highlight" : "Panetta is rumored to have sent a resignation letter to 
#                <span class=\"highlight-term\">Barack</span> <span class=\"highlight-term\">Obama</span> today:  http://bit.ly/CDMg9"
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/search
#
# For complete documentation on the options, check out the topsy api docs.
#   http://groups.google.com/group/rtopsy
module Topsy
  
  class LinkSearchResult
    attr_accessor :trackback_permalink, :hits, :trackback_total, :topsy_trackback_url, :url, :content, :title, :score, :highlight
    
    def to_s
      "Topsy LinkSearchResult: #{url}, @#{title}, hits: #{hits}"
    end
    
    def initialize(hash)
      hash.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
