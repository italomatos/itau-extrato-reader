# frozen_string_literal: true

require "csv"

module Itau
  class Parser
    def initialize(file)
      @file = file
    end

    def build
      CSV.foreach(@file, col_sep: ";").map(&method(:row_to_object))
    end

    private

    def row_to_object(row)
      Itau::Item.new(
        date: row[0],
        description: row[1],
        value: row[2]
      )
    end
  end
end
