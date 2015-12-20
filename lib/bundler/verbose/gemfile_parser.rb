module Bundler
  module Verbose
    class GemfileParser
      def self.get_lines(path)
        File.readlines(path).map do |line|
          GemfileLine.new(line)
        end
      end
    end
  end
end
