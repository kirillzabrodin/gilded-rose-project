require 'ticket'
require 'item_basic'

describe Ticket do

  let(:subject) {Ticket.new("A ticket",10,20)}

  it_behaves_like ItemBasic

  it 'increases quality by 1 when more than 10 days till event' do
    subject.sell_in = 11
    expect{subject.update_quality}.to change{subject.quality}.by(1)
  end

  it 'increases quality by 2 when less than 10 days till event' do
    subject.sell_in = 10
    expect{subject.update_quality}.to change{subject.quality}.by(2)
  end

  it 'increases quality by 3 when less than 5 days till event' do
    subject.sell_in = 5
    expect{subject.update_quality}.to change{subject.quality}.by(3)
  end

  it 'sets quality to 0 after event' do
    subject.quality = 20
    subject.sell_in = -1
    expect(subject.update_quality).to eq 0
  end

  it 'does not let quality exceed 50' do
    subject.quality = 50
    expect{subject.update_quality}.to change{subject.quality}.by(0)
  end

  it 'changes sell_in by -1' do
    expect{subject.update_sell_in}.to change{subject.sell_in}.by(-1)
  end

end
