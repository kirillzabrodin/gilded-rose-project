require_relative 'item_basic'

class Legendary

  include ItemBasic

  def update_quality
    @quality
  end

  def update_sell_in
    @sell_in
  end

end
