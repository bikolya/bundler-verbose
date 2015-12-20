module Bundler
  module Verbose
    class GemfileWriter
      attr_reader :file

      def initialize(path = "Gemfile.verbose")
        @file = File.open(path, "w")
      end

      def write(lines)
        lines.each do |line|
          file.write(line.verbosed)
        end
      end
    end
  end
end
