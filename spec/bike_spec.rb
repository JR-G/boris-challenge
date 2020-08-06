require 'bike'

describe Bike do

  context 'when working? is called' do
    it { is_expected.to respond_to :working? }
  end

end