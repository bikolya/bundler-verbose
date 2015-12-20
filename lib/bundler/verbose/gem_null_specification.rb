module Bundler
  module Verbose
    class Gem::NullSpecification
      def description
        ""
      end

      def summary
        ""
      end
    end
  end
end
