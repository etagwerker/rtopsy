require 'rubygems'
require 'json'
require 'httparty'

$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rtopsy/trend'
require 'rtopsy/tag'
require 'rtopsy/link_search_result'
require 'rtopsy/search_count'
require 'rtopsy/linkpost_count'
require 'rtopsy/author'
require 'rtopsy/url_info'
require 'rtopsy/stats'
require 'rtopsy/linkpost'
require 'rtopsy/api'
require 'rtopsy/page'
require 'rtopsy/target'
require 'rtopsy/tweet'

module Topsy
  VERSION = '0.0.1'
end
