module Bundler
  module Verbose
    class GemfileLine
      GEM_NAME_REGEX = /\Agem[\s]*["'](.*?)["']/

      attr_accessor :raw

      def initialize(line)
        @raw = line.rstrip
      end

      def to_s
        verbosed
      end

      def name
        @name ||= get_name
      end

      def info
        @info ||= GemInfo.new(name)
      end

      def verbosed
        [raw, info.prettify(spaces_at_beginning)].compact.join("\n") + "\n"
      end

      private

      def spaces_at_beginning
        raw[/\A */]
      end

      def get_name
        match = raw.lstrip.match(GEM_NAME_REGEX)
        match && match[1]
      end
    end
  end
end

