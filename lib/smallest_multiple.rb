class SmallestMultiple
  def is_evenly_divisible_by?(n, divisor)
    n % divisor == 0
  end

  def is_evenly_divisible_by_1_to_20?(n)
    20.downto(1) do |divisor|
      return false if n % divisor != 0
    end
    true
  end

  def is_evenly_divisible_by_1_to_10?(n)
    10.downto(1) do |divisor|
      return false if n % divisor != 0
    end
    true
  end

  def smallest_multiple_1_to_10
    n = 11
    until is_evenly_divisible_by_1_to_10?(n)
      n += 1
    end
    n
  end

  def smallest_multiple_1_to_20
    n = 21
    until is_evenly_divisible_by_1_to_20?(n)
      n += 1
    end
    n
  end
end