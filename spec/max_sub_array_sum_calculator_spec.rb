require 'spec_helper'

describe 'MaxSubArraySumCalculator' do
  [
      {arr: [20,4,5,15,3,10,2,7], sum: 66},
      {arr: (1..100).to_a, sum: 5050},      
      {arr: [0, 0, 0], sum: 0}      
  ].each do |input|
    it "#{input[:sum]} should be max sum of #{input[:arr].inspect}" do
      calculator = MaxSubArraySumCalculator.new.max_subarray_sum(input[:arr])      
      expect(calculator).to eq(input[:sum])
    end
  end
end