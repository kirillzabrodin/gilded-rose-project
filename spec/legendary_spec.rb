require 'item_basic'
require 'legendary'

describe Legendary do

  let(:subject) {Legendary.new("A legendary item",0,80)}

  it_behaves_like ItemBasic

  it 'never changes quality' do
    expect{subject.update_quality}.to change{subject.quality}.by(0)
  end

  it 'changes sell_in by 0' do
    expect{subject.update_sell_in}.to change{subject.sell_in}.by(0)
  end
end
