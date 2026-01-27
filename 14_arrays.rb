# Arrays (배열)

# 1. 배열 생성
fruits = ["apple", "banana", "cherry"]
numbers = Array.new(3, 0) # [0, 0, 0]
strings = Array.new(3, "default") # ["default", "default", "default"]

mixed = [1, "Ruby", true, nil]

puts "과일 배열: #{fruits.inspect}"
puts "초기화된 배열: #{numbers.inspect}"
puts "초기화된 배열: #{strings.inspect}"
puts "혼합된 배열: #{mixed.inspect}"

# 2. 요소 접근 (Indexing)
puts "첫 번째 요소: #{fruits[0]}"
puts "마지막 요소: #{fruits[-1]}"
puts "범위 선택: #{fruits[0..1].inspect}" # ["apple", "banana"]

# 3. 요소 추가
fruits << "orange"          # 삽입 연산자 (가장 많이 사용)
fruits.push("grape")        # 끝에 추가
fruits.unshift("strawberry") # 맨 앞에 추가
puts "추가 후: #{fruits.inspect}"

# 4. 요소 제거
fruits.pop                  # 마지막 요소 제거 및 반환
fruits.shift                # 첫 번째 요소 제거 및 반환
fruits.delete_at(1)         # 특정 인덱스 요소 제거
fruits.delete("apple")      # 특정 값과 일치하는 모든 요소 제거
puts "제거 후: #{fruits.inspect}"

# 5. 유용한 메서드들
arr = [3, 1, 4, 1, 5, 9]

puts "길이: #{arr.length}"
puts "포함 여부: #{arr.include?(4)}" # true
puts "정렬: #{arr.sort.inspect}"
puts "역순: #{arr.reverse.inspect}"
puts "중복 제거: #{arr.uniq.inspect}"
puts "비어있는지 확인: #{[].empty?}"

# 6. 배열 합치기 및 반복
arr1 = [1, 2]
arr2 = [3, 4]
puts "배열 합치기: #{(arr1 + arr2).inspect}"
puts "배열 반복: #{(arr1 * 2).inspect}" # [1, 2, 1, 2]

# 7. 문자열로 변환 (Join)
puts "문자열 결합: #{fruits.join(', ')}"

# 8. 다차원 배열
matrix = [[1, 2], [3, 4]]
puts "2차원 배열 접근: #{matrix[1][0]}" # 3

# 9. 각 요소 순회 (Basic iteration)
fruits.each do |fruit|
  puts "내가 좋아하는 과일: #{fruit}"
end