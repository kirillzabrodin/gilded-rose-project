require 'normal_item'

describe NormalItem do

  it_behaves_like BikeContainer

  it 'decreases quality by 1 when in date' do
    expect {subject.update_quality}.to change{subject.quality}.by(-1)
  end

  it 'decreases quality by 2 when not in date' do
    subject.stub(:in_date?).with(false)
    expect {subject.update_quality}.to change{subject.quality}.by(-2)
  end

  it 'can not have a negative quality' do
    subject.quality = 0
    expect(subject.update_quality).to change{subject.quality}.by(0)
  end
end
