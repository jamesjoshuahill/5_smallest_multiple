require 'smallest_multiple'

describe SmallestMultiple do
  let(:sm) { SmallestMultiple.new }

  it 'should know if a number is evenly divisible by a given number' do
    expect(sm.is_evenly_divisible_by?(10, 5)).to be_true
    expect(sm.is_evenly_divisible_by?(18, 6)).to be_true
  end

  it 'should know if a number is NOT evenly divisible by a given number' do
    expect(sm.is_evenly_divisible_by?(7, 3)).to be_false
    expect(sm.is_evenly_divisible_by?(19, 17)).to be_false
  end

  it 'should know if a number is evenly divisible by 1..20' do
    expect(sm.is_evenly_divisible_by_1_to_20?(2432902008176640000)).to be_true
  end

  it 'should know if a number is NOT evenly divisible by 1..20' do
    expect(sm.is_evenly_divisible_by_1_to_20?(7)).to be_false
  end

  it 'should know if a number is evenly divisible by 1..10' do
    expect(sm.is_evenly_divisible_by_1_to_10?(2520)).to be_true
  end

  it 'should know if a number is NOT evenly divisible by 1..10' do
    expect(sm.is_evenly_divisible_by_1_to_10?(7)).to be_false
  end

  it 'should find the smallest number evenly divisible by 1..10' do
    expect(sm.smallest_multiple_1_to_10).to eq 2520
  end

  it 'should find the smallest number evenly divisible by 1..20' do
    expect(sm.smallest_multiple_1_to_20).to eq 232792560
  end
end