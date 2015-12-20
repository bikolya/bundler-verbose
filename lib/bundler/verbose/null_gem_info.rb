module Bundler
  module Verbose
    class NullGemInfo
      def info
        ""
      end

      def prettify(spaces)
        nil
      end
    end
  end
end
