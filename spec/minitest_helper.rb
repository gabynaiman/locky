require 'coverage_helper'
require 'locky'
require 'minitest/autorun'
require 'turn'
require 'pry-nav'

Turn.config do |c|
  c.format = :pretty
  c.natural = true
  c.ansi = true
end