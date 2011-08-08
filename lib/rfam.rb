# A simple API to a local Rfam installation

require 'rubygems'
require 'active_record'
require 'composite_primary_keys'

# Include the source files
require File.dirname(__FILE__) + '/files/db_connection.rb'
require File.dirname(__FILE__) + '/files/activerecord.rb'