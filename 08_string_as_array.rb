# String as Arrays (문자열을 배열처럼 다루기)

str = "Hello Ruby"

# 1. 인덱싱 (Indexing)
# 문자열의 각 문자는 배열처럼 인덱스로 접근 가능합니다.
puts "첫 번째 문자: #{str[0]}" # H
puts "다시 확인: #{str.slice(0)}" # H
puts "마지막 문자: #{str[-1]}" # y (음수 인덱스는 뒤에서부터)

# 2. 슬라이싱 (Slicing / Range)
# [시작..끝] 또는 [시작, 길이] 형태를 사용합니다.
puts "0번부터 4번까지: #{str[0..4]}" # Hello
puts "6번부터 3글자: #{str[6, 3]}"    # Rub
puts "뒤에서 4글자: #{str[-4..-1]}"   # Ruby
puts "뒤에서 4번째 글자: #{str[-4]}"   # R

# 3. 문자열 수정 (Strings are mutable in Ruby)
# 특정 인덱스의 문자를 직접 바꿀 수 있습니다.
str[0] = "J"
puts "수정된 문자열: #{str}" # Jello Ruby

# 4. 문자열을 배열로 변환
# chars 메서드는 문자열을 한 글자씩 나누어 배열로 만듭니다.
arr = str.chars
puts "배열로 변환: #{arr.inspect}"

# 5. 특정 문자의 포함 위치 확인
puts "'R'의 인덱스: #{str.index('R')}"
