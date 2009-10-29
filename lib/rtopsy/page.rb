# This is the page class for the topsy library. 
# A Page has the following attributes:
#      "page" : 1,
#      "total" : "1139",
#      "perpage" : 15,
#      "list" : Array of Author instances 
#
# According to the official Topsy doc: http://code.google.com/p/otterapi/wiki/Resources?tm=6#/authorsearch
#
# For complete documentation on the options, check out the rtopsy api docs.
#   http://groups.google.com/group/rtopsy
module Topsy
  
  class Page
    attr_accessor :page, :total, :perpage, :list, :window
    
    def to_s
      "Topsy Page: #{page} of #{total}, #{list.size} authors"
    end
    
    #converts a list of Hash objects into Author objects
    def get_authors_list(hash_list)
      result = []
      for hash in hash_list
        result << Author.new(hash)
      end
      return result
    end

    #converts a list of Hash objects into Linkpost objects
    def get_linkposts_list(hash_list)
      result = []
      for hash in hash_list
        result << Linkpost.new(hash)
      end
      return result
    end
    
    #converts a list of Hash objects into LinkSearchResult objects
    def get_linksearchresult_list(hash_list)
      result = []
      for hash in hash_list
        result << LinkSearchResult.new(hash)
      end
      return result
    end
    
    #creates a Page instance from a hash, setting attributes and a list of Author instances
    #for the page
    def initialize(hash, content_type)
      hash.each do |key, value|
        if key == 'list' 
          if content_type == :author
            instance_variable_set("@#{key}", get_authors_list(value))  
          elsif content_type == :link_post
            instance_variable_set("@#{key}", get_linkposts_list(value))
          else
            instance_variable_set("@#{key}", get_linksearchresult_list(value))
          end
          
        else
          instance_variable_set("@#{key}", value)  
        end
      end
    end
    
  end
end
