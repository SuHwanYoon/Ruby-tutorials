# Conditionals (조건문)

# 1. if, elsif, else
# 가장 기본적인 조건문 구조입니다.
age = 18

if age >= 20
  puts "성인입니다."
elsif age >= 13
  puts "청소년입니다."
else
  puts "어린이입니다."
end

# 2. unless
# 조건이 '거짓(false)'일 때 실행됩니다. (if !condition 과 동일)
is_logged_in = false

unless is_logged_in
  puts "로그인이 필요합니다."
end

# 3. 한 줄 조건문 (Modifier form)
# 실행할 코드가 짧을 때 뒤에 붙여서 사용하면 가독성이 좋습니다.
puts "환영합니다!" if age < 20
puts "권한이 없습니다." unless is_logged_in

# 4. 삼항 연산자 (Ternary Operator)
# 조건 ? 참일_때_값 : 거짓일_때_값
result = age >= 20 ? "성인" : "미성년자"
puts "결과: #{result}"

# 5. Case 문 (Case Statement)
# 여러 조건을 비교할 때 유용하며, 다른 언어의 switch-case와 유사합니다.
fruit = "apple"

case fruit
when "apple"
  puts "사과입니다."
when "banana"
  puts "바나나입니다."
else
  puts "기타 과일"
end

# Case 문에서 범위(Range) 사용
# Ruby의 case문은 === 연산자를 사용하여 범위를 체크할 수 있습니다.
score = 85

case score
when 90..100
  puts "A 학점"
when 80..89
  puts "B 학점"
when 70..79
  puts "C 학점"
else
  puts "F 학점"
end

# || 활용문
def resolve_value(user_input, default_value = "기본값")
  user_input || default_value
end

puts "nil 결과: #{resolve_value(nil)}"
puts "입력값 있음 결과: #{resolve_value("사용자 입력")}"

# when then 사용예시
day = "월요일"
case day
when "월요일" then puts "한 주의 시작입니다."
when "금요일" then puts "주말이 다가옵니다."
else puts "평범한 하루입니다."
end