require 'item_basic'

shared_examples_for ItemBasic do

  it { is_expected.to respond_to :name }

end
