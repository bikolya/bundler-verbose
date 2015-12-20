require "bundler/verbose/version"
require "bundler/verbose/gemfile_parser"
require "bundler/verbose/gem_info"
require "bundler/verbose/gemfile_line"

module Bundler
  module Verbose
    def self.verbose(gemfile = "Gemfile")
      lines = GemfileParser.get_lines(gemfile)

      File.open(gemfile + ".verbose", "w") do |f|
        f.puts lines
      end
    end
  end
end
