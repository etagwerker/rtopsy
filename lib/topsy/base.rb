# This is the base class for the topsy library. It makes all the requests 
# to topsy, parses the json and returns ruby objects to play with.
#
# For complete documentation on the options, check out the twitter api docs.
#   http://groups.google.com/group/ruby-topsy/web/api-documentation
module Topsy
  
  class Base
    include HTTParty
      
    #base_uri 'topsy.com'
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
      resp = get_response("http://otter.topsy.com/authorinfo.json?url=http://twitter.com/#{twitter_nick}")
      Author.new(resp)
    end
   
    #returns a Page of results with a list of Author instances
    #who talk most about the query parameter
    def self.authorsearch(query = '', window = 'a')
      resp = get_response("http://otter.topsy.com/authorsearch.json?q=#{query}&window=#{window}")
      Page.new(resp, 'Author')
    end

    #returns a Page of results with a list of Linkpost instances 
    #twitter_nick: eg. barackobama
    #page: eg. 1
    #perpage: eg. 12
    def self.linkposts(twitter_nick = '', page = '1', perpage = '10')
      resp = get_response("http://otter.topsy.com/linkposts.json?url=http://twitter.com/#{twitter_nick}&page=#{page}&perpage=#{perpage}")
      Page.new(resp, 'LinkPost')
    end

    #returns a LinkpostCount for a nick 
    #twitter_nick: eg. barackobama
    def self.linkpostcount(twitter_nick = '')
      resp = get_response("http://otter.topsy.com/linkpostcount.json?url=http://twitter.com/#{twitter_nick}")
      LinkpostCount.new(resp)
    end

    #returns a UrlInfo instance for a certain url
    #url: eg. http://aycron.com
    def self.urlinfo(url)
      resp = get_response("http://otter.topsy.com/urlinfo.json?url=#{url}")
      UrlInfo.new(resp)
    end
    
    #returns a Stats instance for a certain url
    #url: eg. http://aycron.com
    def self.stats(url)
      resp = get_response("http://otter.topsy.com/stats.json?url=#{url}")
      Stats.new(resp)
    end

  end
 
end
