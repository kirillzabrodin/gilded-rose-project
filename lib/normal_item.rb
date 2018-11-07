require_relative 'item_basic'

class NormalItem

  include ItemBasic

  def update_quality
    in_date? ? lost_quality = 1 : lost_quality = 2
    lost_quality = @quality if @quality - lost_quality < 0
    @quality -= lost_quality
  end

  private

  def in_date?
    @sell_in >= 0
  end

end
