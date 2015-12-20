module Bundler
  module Verbose
    class GemInfo < SimpleDelegator
      def initialize(name)
        specification = Gem::Specification.find_all_by_name(name.to_s).first
        super(specification)
      end

      def info
        [description, summary, NullGemInfo.new.info].find { |s| !s.nil? }
      end

      def prettify(spaces)
        info.split("\n").map { |line| spaces + "# #{line}" }.join("\n") + "\n"
      end
    end
  end
end
