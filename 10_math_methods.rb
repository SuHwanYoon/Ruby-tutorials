# Math Methods

# 1. 수학 상수 (Constants)
puts "원주율(PI): #{Math::PI}"
puts "자연상수(E): #{Math::E}"

# 2. 제곱근 (Square Root)
puts "16의 제곱근: #{Math.sqrt(16)}" # 4.0

# 3. 절대값 (Absolute Value)
# .abs는 Numeric 클래스의 메서드입니다.
puts "-10의 절대값: #{-10.abs}"

# 4. 반올림, 올림, 내림 (Rounding)
num = 3.64
puts "#{num} 반올림: #{num.round}"    # 4
puts "#{num} 소수점 첫째자리까지 반올림: #{num.round(1)}" # 3.6
puts "#{num} 올림: #{num.ceil}"      # 4
puts "#{num} 내림: #{num.floor}"     # 3

# 5. 최대값과 최소값 (Max, Min)
puts "최대값: #{[1, 5, 10].max}"
puts "최소값: #{[1, 5, 10].min}"

# 6. 삼각함수 (Trigonometry)
# 라디안(Radian) 값을 인자로 받습니다.
puts "sin(PI/2): #{Math.sin(Math::PI / 2)}" # 1.0
puts "cos(0): #{Math.cos(0)}"               # 1.0

# 7. 로그 (Logarithms)
puts "자연로그 log(E): #{Math.log(Math::E)}" # 1.0
puts "상용로그 log10(100): #{Math.log10(100)}" # 2.0
