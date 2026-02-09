# function / methods with predicate and bang
=begin
 Predicate => ? , means question, should return true or false
 Bang => !, means that this method with modify the object
=end

# 1. Predicate Methods (?)
# 메서드 이름 끝에 ?가 붙으며, 항상 true 또는 false를 반환하는 관습이 있습니다.

def adult?(age)
  age >= 20
end

puts "성인 확인 (25): #{adult?(25)}" # true
puts "성인 확인 (15): #{adult?(15)}" # false

# 내장 메서드 예시
puts "문자열 비어있음?: #{''.empty?}"
puts "배열에 요소 포함?: #{[1, 2, 3].include?(1)}"

# 2. Bang Methods (!)
# 메서드 이름 끝에 !가 붙으며, 원본 객체를 직접 수정(Destructive)하거나 
# 예외를 발생시킬 수 있음을 경고하는 의미를 담고 있습니다.

name = "yoon"

# Bang이 없는 경우: 원본은 바뀌지않고 변환된 복사본을 반환
puts "upcase 결과: #{name.upcase}"
puts "원본 확인: #{name}" # 원보은 여전히 "yoon" 으로 변하지 않음

# Bang이 있는 경우: 원본 객체 자체가 수정됨
name.upcase!
puts "upcase! 실행 후 원본: #{name}" # 원보 자체가 "YOON" 으로 변경됨

# 커스텀 Bang 메서드 예시
def celebrate!(user)
  user[:status] = "Happy" # 원본 해시 수정
end

my_user = { name: "Yoon", status: "Normal" }
celebrate!(my_user)
puts "Bang 메서드 후 상태: #{my_user[:status]}" # Happy
