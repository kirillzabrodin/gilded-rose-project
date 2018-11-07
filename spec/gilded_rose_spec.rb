require 'gilded_rose'
require 'item'

describe GildedRose do

  let(:item) { (double :item, update_quality: true, update_sell_in: -1) }
  let(:subject) {GildedRose.new([item])}

  it 'calls update_quality on the items' do
    expect(item).to receive(:update_quality)
    subject.update_quality
  end

  it 'calls update_sell_in on the items' do
    expect(item).to receive(:update_sell_in)
    subject.update_quality
  end

end
