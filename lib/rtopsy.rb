require 'rubygems'
require 'json'
require 'HTTParty'

$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rtopsy/link_search_result'
require 'rtopsy/linkpost_count'
require 'rtopsy/author'
require 'rtopsy/url_info'
require 'rtopsy/stats'
require 'rtopsy/linkpost'
require 'rtopsy/base'
require 'rtopsy/page'
require 'rtopsy/target'

module Topsy
  VERSION = '0.0.1'
end
