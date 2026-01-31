# Loops in Ruby

# 1. while 문
# 조건이 참(true)인 동안 계속 실행됩니다.
i = 0
while i < 3
  puts "while 반복: #{i}"
  i += 1
end

# 2. until 문
# 조건이 참(true)이 될 때까지(즉, 거짓인 동안) 실행됩니다.
j = 0
until j == 3
  puts "until 반복: #{j}"
  j += 1
end

# 3. for 문
# 범위(Range)나 배열을 순회할 때 사용합니다. 0..2는 0을포함하고 2도 포함한다
for k in 0..2
  puts "for .. 반복: #{k}"
end

# ... 사용 케이스 ... 은 마지막 인덱스 제외
for k in 0...2
  puts "for ... 반복: #{k}"
end


# 4. times 메서드
# 정해진 횟수만큼 반복할 때 가장 Ruby다운 방식입니다.
3.times do |n|
  puts "times 반복: #{n}"
end

# 5. each 메서드
# 컬렉션(배열, 범위 등)의 각 요소를 순회할 때 가장 많이 사용됩니다. 
(10..12).each do |num|
  puts "each 반복: #{num}"
end

# 6. loop 문과 break
# 무한 루프를 생성하며, break를 통해 탈출합니다.
count = 0
loop do
  puts "loop 내부: #{count}"
  count += 1
  break if count >= 3
end

# 7. next와 redo
# next: 현재 반복을 건너뛰고 다음 반복으로 진행 (continue와 유사)
# redo: 조건을 체크하지 않고 현재 반복을 다시 실행
puts "--- next 예시 ---"
(1..5).each do |n|
  next if n % 2 == 0
  puts "홀수: #{n}"
end

# 8. step 메서드
# 특정 간격으로 숫자를 건너뛰며 반복합니다.
puts "--- step 예시 ---"
1.step(10, 3) do |n|
  puts "step: #{n}" # 1, 4, 7, 10
end

# 9. 한 줄 반복 (Modifier form)
puts "한 줄 반복" while false # 조건이 처음부터 거짓이면 실행 안 됨
x = 0
puts "x 값: #{x += 1}" while x < 3


# array 배열 순회
my_array = [1, 2, 3, 4, 5]

for index in my_array.each
  puts "array 순회: #{index}"
end

# upto 활용 코드 예시
1.upto(5) do |i|
  puts "upto 반복: #{i}"
end

# downto 활용 코드 예시
5.downto(1) do |i|
  puts "downto 반복: #{i}"
end