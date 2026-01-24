# Data type conversions/ casting

# 1. 숫자를 문자열로 변환 (to_s) #{}안에서는 굳이 to_s를 할필요가 없음
num = 10
puts "숫자를 문자열로: #{num}"

# 2. 문자열을 숫자로 변환 (to_i, to_f)
str = "20"
puts "문자열을 정수로: #{str.to_i + 5}" # 25

str_f = "10.5"
puts "문자열을 실수로: #{str_f.to_f + 0.5}" # 11.0

# 3. 정수와 실수 간의 변환
a = 10
puts "정수를 실수로: #{a.to_f}" # 10.0

b = 10.9
puts "실수를 정수로: #{b.to_i}" # 10 (소수점 버림)

# 4. 숫자가 아닌 문자열의 변환
puts "abc를 정수로: #{'abc'.to_i}" # 0 (변환 불가 시 0)
puts "10abc를 정수로: #{'10abc'.to_i}" # 10 (숫자로 시작하면 해당 부분까지 변환)


# to_r을 사용해 Rational(유리수)로 변환
puts "0.5".to_r # 1/2

# to_c를 사용해 Complex(복소수)로 변환
puts "1+2i".to_c # 1
