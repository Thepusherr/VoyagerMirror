# frozen_string_literal: true

class FancySelectComponent < ViewComponent::Base
  attr_reader :label, :items

  def initialize(label:, items: [])
    @label = label
    @items = items
  end

  class Item < Struct.new(:id, :label); end
end
