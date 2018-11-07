require 'normal_item'
require 'item_basic'

describe NormalItem do

  let(:subject) {NormalItem.new("A normal item",10,20)}

  it_behaves_like ItemBasic

  it 'decreases quality by 1 when in date' do
    expect{subject.update_quality}.to change{subject.quality}.by(-1)
  end

  it 'decreases quality by 2 when not in date' do
    subject.sell_in = -1
    expect{subject.update_quality}.to change{subject.quality}.by(-2)
  end

  it 'can not have a negative quality' do
    subject.quality = 0
    expect{subject.update_quality}.to change{subject.quality}.by(0)
  end
end
