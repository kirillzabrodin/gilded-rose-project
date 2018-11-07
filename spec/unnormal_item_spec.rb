require 'unnormal_item'
require 'item_basic'

describe GrowItem do

  let(:subject) {GrowItem.new("An appriciating item",40,20)}

  it_behaves_like ItemBasic

  it 'increases in quality by 1 when in date' do
    subject.sell_in = 0
    expect{subject.update_quality}.to change{subject.quality}.by(1)
  end

  it 'increases in quality by 2 when not in date' do
    subject.sell_in = -1
    expect{subject.update_quality}.to change{subject.quality}.by(2)
  end

  it 'never raises quality to above 50' do
    subject.quality = 50
    expect{subject.update_quality}.to change{subject.quality}.by(0)
  end

  it 'raises quality from 49 to 50' do
    subject.quality = 49
    subject.sell_in = -1
    expect{subject.update_quality}.to change{subject.quality}.by(1)
  end

  it 'changes sell_in by -1' do
    expect{subject.update_sell_in}.to change{subject.sell_in}.by(-1)
  end

end
