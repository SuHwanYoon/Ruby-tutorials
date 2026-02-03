# Hash
# Key-Value 쌍으로 이루어진 컬렉션입니다. (Python의 Dictionary와 유사)

# 1. 해시 생성
# 화살표 방식 (Old style)
# 화살표 방식은 key로 문자열, 동적 키를 사용하는게 가능하다
user_old = { "name" => "Yoon", "age" => 25 }

# 심볼 방식 (New style - 권장됨)
# 심볼방식은 key로 문자열 , 동적 키 사용이 불가하다
user = { name: "Yoon", age: 25, city: "Seoul" }

puts "해시 출력: #{user}"
puts "이름 접근: #{user[:name]}"

# 2. 기본값 설정
# 존재하지 않는 키(여기서는 :theme)에 접근할 때 nil 대신 반환할 기본값을 설정할 수 있습니다.
options = Hash.new("없음")
puts "존재하지 않는 키: #{options[:theme]}" # "없음"

# 3. 요소 추가 및 수정
user[:job] = "Developer" # 새로운거 할당하면 추가
user[:age] = 26          # 기존꺼에 다른거할당하면 수정
puts "수정 후: #{user.inspect}"

# 4. 요소 삭제
user.delete(:city)
puts "삭제 후: #{user.inspect}"

# 5. 주요 메서드
puts "키 목록: #{user.keys.inspect}"
puts "값 목록: #{user.values.inspect}"
puts "키 포함 여부: #{user.key?(:name)}" # true
puts "해시 크기: #{user.length}"

# 6. 해시 순회 (Iteration)
user.each do |key, value|
  puts "Key: #{key}, Value: #{value}"
end

# 7. 해시 병합 (Merge메서드)
extra_info = { hobby: "Coding", language: "Ruby" }
merged_user = user.merge(extra_info)
puts "병합된 해시: #{merged_user.inspect}"

# 8. 심볼 키 vs 문자열 키
# 심볼과 문자열은 서로 다른 객체이므로 구분해서 사용해야 합니다.
mixed_hash = { :name => "Symbol", "name" => "String" }
puts "심볼 접근: #{mixed_hash[:name]}"
puts "문자열 접근: #{mixed_hash["name"]}"

# 9. 중첩 해시 (Nested Hash)
contacts = {
  alice: { phone: "123-456", email: "alice@example.com" },
  bob: { phone: "987-654", email: "bob@example.com" }
}
puts "Alice의 전화번호: #{contacts[:alice][:phone]}"

# 10. select & reject (필터링)
scores = { math: 90, english: 70, science: 85 }
high_scores = scores.select { |subject, score| score >= 80 }
puts "80점 이상 과목: #{high_scores}"