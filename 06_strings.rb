# Strings and most used methods

str = "Hello, Ruby World!"

# 1. 문자열 길이
puts "길이: #{str.length}" # 18

# 2. 대소문자 변환
puts "대문자: #{str.upcase}"
puts "소문자: #{str.downcase}"
puts "첫글자만 대문자: #{'ruby'.capitalize}"
puts "대소문자 반전: #{str.swapcase}"

# 3. 포함 여부 확인
puts "Ruby 포함 여부: #{str.include?('Ruby')}" # true
puts "H로 시작하는지: #{str.start_with?('H')}" # true
puts "!로 끝나는지: #{str.end_with?('!')}"    # true

# 4. 공백 제거
spaced_str = "   Ruby   "
puts "공백 제거: '#{spaced_str.strip}'" # 공백 제거: 'Ruby'
puts "왼쪽 공백 제거: '#{spaced_str.lstrip}'"  # 왼쪽 공백 제거: 'Ruby   '
puts "오른쪽 공백 제거: '#{spaced_str.rstrip}'" # 오른쪽 공백 제거: '   Ruby'

# 5. 문자열 치환 (Replace)
# gsub는 전역 치환 (Global Substitution)
puts "치환: #{str.gsub('Ruby', 'Python')}" # Hello, Python World!

# sub는 첫 번째 발생만 치환
puts "치환: #{str.sub('Ruby', 'Python')}" # Hello, Python World!



# 6. 문자열 분리 및 결합
csv = "apple,banana,cherry"
fruits = csv.split(",") # 배열로 반환
puts "분리된 배열: #{fruits.inspect}"
puts "다시 합치기: #{fruits.join(' & ')}"

# 7. 인덱싱 및 슬라이싱
puts "첫 번째 글자: #{str[0]}"
puts "0부터 5까지: #{str[0..4]}" # Hello

# 8. 문자열 반전
puts "거꾸로: #{str.reverse}"

# 9. 비어있는지 확인
puts "비어있음?: #{''.empty?}" # true

# 10. 여러 줄 문자열 (Heredoc)
multiline = <<~TEXT
  이것은 여러 줄의
  문자열입니다.
TEXT
puts multiline
