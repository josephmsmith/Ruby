# frozen_string_literal: true

module Helper
  def self.positive_integer?(num)
    num.is_a?(Integer) && num.positive?
  end
  BASE_HITPOINTS = 10
end
