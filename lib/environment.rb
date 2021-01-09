# frozen_string_literal: true
#require'pry'
require_relative "./breweries_cli/version"

require 'bundler'
Bundler.require
require 'json'

require_relative "./breweries_cli/cli"
require_relative "./breweries_cli/api"
require_relative "./breweries_cli/breweries"
#module Breweries_cli
#end