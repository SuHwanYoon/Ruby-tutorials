# function / methods
=begin
 - starts withd def
 - ends with end
 - has a name
 - accepts parameters=
=end


# 1. 기본 메서드 정의
def say_hello
  puts "Hello, Ruby!"
end

say_hello

# 2. 매개변수(Parameters)가 있는 메서드
def greet(name)
  puts "안녕하세요, #{name}님!"
end

greet("Yoon")

# 3. 기본값(Default value) 설정
def introduce(name, age = 20)
  puts "이름: #{name}, 나이: #{age}"
end

introduce("Alice")      # 기본값 20 사용
introduce("Bob", 30)    # 30 사용
# introduce() # argument error

# 4. 반환값 (Return value)
# Ruby는 마지막 줄의 실행 결과가 자동으로 반환됩니다. (return 키워드 생략 가능)
def add(a, b)
  a + b
end

result = add(5, 10)
puts "더하기 결과: #{result}"

# 5. 명시적 return 사용
def check_age(age)
  return "성인" if age >= 20
  "미성년자"
end

puts "나이 체크: #{check_age(15)}"

# 6. 가변 인자 (Splat Operator - *)
# 인자의 개수가 정해지지 않았을 때 사용합니다.
def print_all(*items)
  items.each { |item| puts "요소: #{item}" }
end

print_all("Apple", "Banana", "Cherry")

# 7. 키워드 인자 (Keyword Arguments)
# 이경우에는 호출시의 순서가 중요하지 않음
# 주로 키워드 인자 위주로 설계한다
def create_user(name:, role: "User")
  puts "이름: #{name}, 권한: #{role}"
end

create_user(name: "Yoon", role: "Admin")

