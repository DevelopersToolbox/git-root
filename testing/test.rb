#!/usr/bin/env ruby
#
# This is a very simply testing script to allow for testing of local changes without having to install the gem locally
#

$LOAD_PATH.unshift('./lib')

require 'git-root'

puts GitRoot.path
