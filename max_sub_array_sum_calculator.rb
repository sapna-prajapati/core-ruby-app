class MaxSubArraySumCalculator

  def max_subarray_sum(arr)
    raise "Input array shouldn't be nil or empty" if arr.nil? || arr.empty?

    max_so_far = 0
    
    (0..arr.length-1).each do |start|
      max_end = 0

      (start..arr.length-1).each do |num|
        max_end += arr[num]        
        max_so_far = max_end if max_end > max_so_far
      end
    end
    return max_so_far
  end
end

x = (1..100).to_a
puts MaxSubArraySumCalculator.new.max_subarray_sum(x)
