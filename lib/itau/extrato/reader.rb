# frozen_string_literal: true

require_relative "reader/version"
require_relative "reader/itau/parser"
require_relative "reader/itau/item"

module Itau
  module Extrato
    module Reader
      class Error < StandardError; end
      # Your code goes here...
    end
  end
end
