require 'spec_helper'

describe 'FizzBuzz' do

  describe '#is_divisible_by_three?' do
    context 'when number 9' do
      it 'returns true' do
        expect(FizzBuzz.new.is_divisible_by_three?(9)).to be_truthy
      end
    end

    context 'when number 8' do
      it 'returns false' do
        expect(FizzBuzz.new.is_divisible_by_three?(8)).to be_falsy  
      end
    end
  end
  
  describe '#is_divisible_by_five?' do
    context 'when number 10' do
      it 'returns true' do 
        expect(FizzBuzz.new.is_divisible_by_five?(10)).to be_truthy
      end
    end

    context 'when number 3' do
      it 'returns false' do
        expect(FizzBuzz.new.is_divisible_by_five?(3)).to be_falsy  
      end
    end
  end

  describe '#is_not_divisible_by_three_or_five?' do
    context 'when number 1' do
      it 'returns number' do
        expect(FizzBuzz.new.is_not_divisible_by_three_or_five?(1)).to be_truthy 
      end
    end
  end

end