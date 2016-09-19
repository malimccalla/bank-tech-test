require 'interface'

describe Interface do

  let(:interface) {described_class.new}

  it {is_expected.to respond_to :print_menu}

end
