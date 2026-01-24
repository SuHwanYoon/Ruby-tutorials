# Ruby의 주요 데이터 타입 (Data Types)

# 1. 숫자 (Numbers)
num = 10          # Integer (정수)
float_num = 10.5  # Float (실수)
puts "숫자: #{num}, #{float_num}"

# 2. 문자열 (Strings)
str = "Hello Ruby"
puts "문자열: #{str}"

# 3. 불리언 (Booleans)
is_true = true
is_false = false
puts "불리언: #{is_true}, #{is_false}"

# 4. 심볼 (Symbols)
# 문자열과 비슷하지만 변경 불가능(immutable)하며 식별자로 주로 사용됨
# 한번 생성되면 값이 절대 변하지않음
# 같은 이름의 심볼은 항상 같은 객체를 가리킴  반면 문자열은 값은 같아도 객체는 새로만들어져서 비교하면 false로 판단함
# 심볼은 Swift의 enum case , kotlin의 enum class와 비슷한 개념
sym = :ruby
puts "심볼: #{sym}"

# 5. 배열 (Arrays)
arr = [1, 2, 3, "Ruby"]
puts "배열: #{arr.inspect}"

# 6. 해시 (Hashes)
# Key-Value 쌍으로 이루어진 데이터 구조 (Python의 Dict와 유사)
hash = { "name" => "yoon", :language => "ruby" }
puts "해시: #{hash}"

# 7. Nil
# 값이 없음을 나타내는 객체
# .inspect는 개발자가 확인하기 위한 출력메서드
nothing = nil
puts "Nil: #{nothing.inspect}"
