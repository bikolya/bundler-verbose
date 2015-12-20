module Bundler
  module Verbose
    class NullGemInfo
      def prettify(info, spaces)
        nil
      end
    end
  end
end
