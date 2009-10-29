# This is the base class for the topsy library. It makes all the requests 
# to topsy, parses the json and returns ruby objects to play with.
#
# For complete documentation:
#   http://groups.google.com/group/rtopsy
module Topsy
  
  #provides all methods to the Topsy API
  class Base
    include HTTParty
      
    base_uri 'http://otter.topsy.com'
    default_params :output => 'json'
    format :json
    

    #performs a HTTParty get
    #returns the response hash
    def self.get_response(api_request)
      hash = get(api_request)  
      return hash["response"]
    end
    
    #returns the author info object according to the twitter url
    #author_handle: eg. barackobama
    def self.authorinfo(twitter_nick)
      resp = get_response("/authorinfo.json?url=http://twitter.com/#{twitter_nick}")
      Author.new(resp)
    end
   
    #returns a Page of results with a list of Author instances
    #who talk most about the query parameter
    def self.authorsearch(query = '', window = 'a')
      resp = get_response("/authorsearch.json?q=#{query}&window=#{window}")
      Page.new(resp, :author)
    end

    #returns a Page of results with a list of Linkpost instances 
    #twitter_nick: eg. barackobama
    #page: eg. 1
    #perpage: eg. 12
    def self.linkposts(twitter_nick = '', page = '1', perpage = '10')
      resp = get_response("/linkposts.json?url=http://twitter.com/#{twitter_nick}&page=#{page}&perpage=#{perpage}")
      Page.new(resp, :link_post)
    end

    #returns a LinkpostCount for a nick 
    #twitter_nick: eg. barackobama
    def self.linkpostcount(twitter_nick = '')
      resp = get_response("/linkpostcount.json?url=http://twitter.com/#{twitter_nick}")
      LinkpostCount.new(resp)
    end

    #returns a UrlInfo instance for a certain url
    #url: eg. http://aycron.com
    def self.urlinfo(url)
      resp = get_response("/urlinfo.json?url=#{url}")
      UrlInfo.new(resp)
    end
    
    # returns a Page of results with a list of LinkSearchResult 
    # returns nil if the window parameter is not correct 
    def self.search(query = '', window = :auto, page = 1, perpage = 10)
      if [:auto, :h, :d, :w, :m, :a].include? window
        resp = get_response("/search.json?q=#{query}&window=#{window}&page=#{page}&perpage=#{perpage}")
        Page.new(resp, :link_search_result)
      else
        nil
      end      
    end
    
    #returns a Stats instance for a certain url
    #url: eg. http://aycron.com
    def self.stats(url)
      resp = get_response("/stats.json?url=#{url}")
      Stats.new(resp)
    end

  end
 
end
