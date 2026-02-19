# Ruby Sorting (정렬)

# 1. 기본 정렬 (sort)
# 오름차순으로 정렬된 새로운 배열을 반환합니다.
numbers = [5, 2, 8, 1, 9]
sorted_numbers = numbers.sort
puts "원본 배열: #{numbers.inspect}"
puts "정렬된 배열: #{sorted_numbers.inspect}"

# 2. 원본 수정 정렬 (sort!)
# Bang(!) 메서드를 사용하여 원본 배열 자체를 변경합니다.
fruits = ["cherry", "apple", "banana"]
fruits.sort!
puts "원본 수정 정렬: #{fruits.inspect}"

# 3. 블록을 사용한 커스텀 정렬
# <=> (Spaceship operator)를 사용합니다.
# a <=> b 결과: a < b 이면 -1, a == b 이면 0, a > b 이면 1

# 내림차순 정렬
descending = [1, 7, 3, 9].sort { |a, b| b <=> a }
puts "내림차순: #{descending.inspect}"

# 문자열 길이에 따른 정렬
words = ["apple", "pear", "strawberry", "kiwi"]
by_length = words.sort { |a, b| a.length <=> b.length }
puts "길이순 정렬: #{by_length.inspect}"

# 4. sort_by 메서드
# 특정 기준(키)을 바탕으로 정렬할 때 sort보다 성능상 유리하고 가독성이 좋습니다.
users = [
  { name: "Yoon", age: 25 },
  { name: "Alice", age: 20 },
  { name: "Bob", age: 30 }
]

# 나이순으로 정렬
sorted_users = users.sort_by { |user| user[:age] }
puts "나이순 정렬: #{sorted_users.inspect}"

# 5. 복합 조건 정렬
# 1순위: 길이, 2순위: 알파벳 순
mixed_words = ["banana", "apple", "cherry", "date", "egg"]
complex_sort = mixed_words.sort_by { |word| [word.length, word] }
puts "복합 조건 정렬: #{complex_sort.inspect}"

# 6. 역순 정렬 (reverse)
# 정렬 후 뒤집거나, sort_by에서 -를 활용(숫자의 경우)
numbers = [1, 10, 5, 20]
puts "역순 정렬 1: #{numbers.sort.reverse.inspect}"
puts "역순 정렬 2: #{numbers.sort_by { |n| -n }.inspect}"

# 7. 객체 정렬 (Comparable Mixin)
# 기본적으로 숫나와 문자열은 Comparable 프로토콜을 구현하고 있어 sort가 가능합니다.
puts "알파벳 역순: #{['a', 'c', 'b'].sort { |a, b| b <=> a }.inspect}"