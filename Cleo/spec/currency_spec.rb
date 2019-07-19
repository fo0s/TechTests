describe 'Change converter: ' do
  before(:each) { @cha_ching = ChangeConversion.new }

  it 'should return 2 x 2 pound coins' do
    @cha_ching.calculate('£4.00')
    expect(@cha_ching.change).to eq [['£2', 2]]
  end

  it 'should return some pence' do
    @cha_ching.calculate('£0.70')
    expect(@cha_ching.change).to eq [['50p', 1], ['20p', 1]]
  end

  it 'should return pounds and pence' do
    @cha_ching.calculate('£3.18')
    expect(@cha_ching.change).to eq [['£2', 1], ['£1', 1], ['10p', 1], ['5p', 1], ['2p', 1], ['1p', 1]]
  end
end
