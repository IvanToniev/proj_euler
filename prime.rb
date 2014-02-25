class Integer
  def prime?
    return false if self <= 0

    (2..Math.sqrt(self)).each do |i|
      if self % i == 0 && i < self
        return false
      end
    end

    true
  end
end
puts 15.prime?