module Bundler
  module Verbose
    class GemfileVerboser
      def initialize(gemfile, output)
        @gemfile = gemfile
        @output  = output
      end

      def verbose
        lines = GemfileParser.get_lines(@gemfile)

        File.open(@output, "w") do |f|
          f.puts lines
        end
      end
    end
  end
end
