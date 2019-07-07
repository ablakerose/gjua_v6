require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative "gjua_v6/version"

module GjuaV6
  class Error < StandardError; end
  # Your code goes here...
end

require_relative './cli'
require_relative './scraper'
require_relative './case'