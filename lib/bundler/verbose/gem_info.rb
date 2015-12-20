require "bundler/verbose/gem_null_specification"

module Bundler
  module Verbose
    class GemInfo < SimpleDelegator
      def initialize(name)
        super(get_specification(name))
      end

      def info
        [description, summary, ""].find { |s| !s.nil? }
      end

      def prettify(spaces)
        return if info.empty?
        info.split("\n").map { |line| "#{spaces}# #{line}" }.join("\n") + "\n"
      end

      private

      def get_specification(name)
        Gem::Specification.find_all_by_name(name.to_s).first || Gem::NullSpecification.new
      rescue Gem::LoadError
        Gem::NullSpecification.new
      end
    end
  end
end
