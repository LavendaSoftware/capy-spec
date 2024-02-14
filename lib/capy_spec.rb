# frozen_string_literal: true

require_relative "capy_spec/version"

module CapySpec
  class Error < StandardError; end

  class Setup
    DEFAULT_FILES = ["capy_spec/all"]

    class << self
      def call(files = DEFAULT_FILES)
        files.each { |file| require file }
      end
    end
  end
end
