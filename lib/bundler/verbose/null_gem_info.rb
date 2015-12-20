module Bundler
  module Verbose
    class NullGemInfo
      def description
        ""
      end

      def prettify(info, spaces)
        nil
      end
    end
  end
end
