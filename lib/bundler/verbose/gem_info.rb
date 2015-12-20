module Bundler
  module Verbose
    class GemInfo < SimpleDelegator
      def initialize(name)
        specification = Gem::Specification.find_all_by_name(name).first
        super(specification)
      end

      def prettify(info, spaces)
        info = public_send(info) || NullGemInfo.new.public_send(info)
        info.split("\n").map { |line| spaces + "# #{line}" }.join("\n") + "\n"
      end
    end
  end
end
