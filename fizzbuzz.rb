class FizzBuzz

  def print_fizzbuzz(n)
    (1..n).each do |num|
      if is_divisible_by_three?(num)
        puts "Fizz"
      elsif is_divisible_by_five?(num) 
        puts "Buzz"
      elsif is_not_divisible_by_three_or_five?(num)
        puts num
      end
    end
  end

  def is_divisible_by_three?(num)
    is_divisible_by(num, 3)
  end

  def is_divisible_by_five?(num)
    is_divisible_by(num, 5)
  end

  def is_not_divisible_by_three_or_five?(num)
    !is_divisible_by(num, 3) && !is_divisible_by(num, 5)
  end

  def is_divisible_by(num, divisor)
    num % divisor == 0
  end
end

FizzBuzz.new.print_fizzbuzz(20)