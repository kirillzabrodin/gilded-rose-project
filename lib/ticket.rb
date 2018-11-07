require_relative 'item_basic'

class Ticket

  include ItemBasic

  def update_quality
    @quality - lost_quality > 50 ? quality = @quality - 50 : quality = lost_quality
    @quality -= quality
  end

  def update_sell_in
    @sell_in -= 1
  end

  private

  def in_10_days
    @sell_in <= 10
  end

  def in_5_days
    @sell_in <= 5
  end

  def lost_quality
    in_10_days ? lost_quality = -2 : lost_quality = -1
    in_5_days ? lost_quality = -3 : 0
    sell_in < 0 ? lost_quality = @quality : lost_quality
  end

end
