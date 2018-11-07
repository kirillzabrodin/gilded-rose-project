require 'normal_item'
require 'legendary'

describe Legendary do

  let(:subject) {Legendary.new("A legendary item","Infinity",80)}

  it_behaves_like ItemBasic

  it 'never changes quality' do
    expect{subject.update_quality}.to change{subject.quality}.by(0)
  end

end
