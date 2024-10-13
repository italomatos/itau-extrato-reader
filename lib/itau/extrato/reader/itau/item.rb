# frozen_string_literal: true

require "date"

module Itau
  class Item # rubocop:disable Style/Documentation
    attr_reader :date, :value, :description

    def initialize(date:, value:, description:)
      @date = Date.strptime(date, "%d/%m/%Y")
      @value = format_value(value)
      @description = description
    end

    def entrada?
      @value.positive?
    end

    def saida?
      @value.negative?
    end

    private

    def format_value(value)
      value.gsub(".", "").gsub(",", ".").to_f
    end
  end
end
