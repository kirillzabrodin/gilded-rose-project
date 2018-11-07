require 'normal_item'

class GildedRose

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      item.update_quality
      item.update_sell_in
    end
  end
end
