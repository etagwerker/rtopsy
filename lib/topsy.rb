require 'rubygems'
require 'json'
require 'HTTParty'

$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'topsy/linkpost_count'
require 'topsy/author'
require 'topsy/url_info'
require 'topsy/stats'
require 'topsy/linkpost'
require 'topsy/base'
require 'topsy/page'
require 'topsy/target'

module Topsy
  VERSION = '0.0.1'
end
