#Symbols

=begin
symbols are like strings, except they are code
-unique copy
-immutable
=end

# 1. 심볼 생성
s1 = :ruby
s2 = :ruby
# 문자열 생성
str1 = "ruby"
str2 = "ruby"

# 2. 고유성 (Unique Copy)
# 심볼은 같은 이름이면 동일한 객체 ID를 가집니다. (메모리 효율적)
# 문자열은 내용이 같아도 서로 다른 객체 ID를 가집니다.
puts "심볼 ID 비교: #{s1.object_id == s2.object_id}"   # true
puts "문자열 ID 비교: #{str1.object_id == str2.object_id}" # false

# 3. 불변성 (Immutable)
# 문자열은 수정 가능하지만, 심볼은 수정할 수 없습니다.
# str1[0] = "R" (가능)
# s1[0] = "R"   (에러 발생)

# 4. 해시 키로 사용 (가장 흔한 사례)
# 문자열 키보다 심볼 키가 성능상 유리합니다.
user = {
  name: "Yoon",
  age: 25
}
puts "심볼 키 접근: #{user[:name]}"

# 5. 변환 (Conversion)
puts "심볼을 문자열로: #{:hello.to_s}"
puts "문자열을 심볼로: #{"world".to_sym}"

# 6. 메서드 이름이나 상태 표현에 사용
status = :pending

if status == :pending
  puts "대기 중입니다..."
end
