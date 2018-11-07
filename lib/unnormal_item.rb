require_relative 'item_basic'

class GrowItem

  include ItemBasic

  def update_quality
    @quality - lost_quality > 50 ? quality = @quality -50 : quality = lost_quality
    @quality -= quality
  end

  def update_sell_in
    @sell_in -= 1
  end

  private

  def lost_quality
    sell_in < 0 ? -2 : -1
  end

end
