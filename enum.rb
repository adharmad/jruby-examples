# enumerated data types in ruby

module Kernel
  # simple (sequential) enumerated values
  def enum(*syms)
    syms.each { |s| const_set(s, s.to_s) }
    const_set(:DEFAULT, syms.first) unless syms.nil?
  end
end

module Gradient
    enum :DOWNSLOPE, :LEVEL, :UPSLOPE
end

puts Gradient::DOWNSLOPE

