# Ruby Blocks (블록)

=begin
 Ruby 블록은 메서드에 전달할 수 있는 코드 뭉치입니다.
 - do...end 또는 { ... } 형식을 사용합니다.
 - 블록 자체는 객체가 아니지만, 메서드 내에서 yield 키워드를 통해 실행될 수 있습니다.
=end

# 1. 기본 블록 형태
# 한 줄일 때는 { }, 여러 줄일 때는 do...end를 사용하는 것이 관습입니다.
[1, 2, 3].each { |n| puts "숫자: #{n}" }

[1, 2, 3].each do |n|
  result = n * 2
  puts "두 배: #{result}"
end

# 2. yield 키워드
# 메서드 내부에서 yield를 호출하면 메서드에 전달된 블록이 실행됩니다.
def block_test
  puts "메서드 시작"
  yield if block_given? # 블록이 전달되었을 때만 실행
  puts "메서드 종료"
end

block_test { puts ">>> 블록 실행 중 <<<" }

# 3. 블록에 인자 전달하기
# yield에 인자를 넘겨 블록 변수(|x|)로 받을 수 있습니다.
def greet_user(name)
  yield(name)
end

greet_user("Yoon") { |n| puts "안녕하세요, #{n}님!" }

# 4. 블록의 반환값
# 블록의 마지막 실행 결과가 yield의 반환값이 됩니다.
def calculate(a, b)
  result = yield(a, b)
  puts "계산 결과: #{result}"
end

calculate(10, 5) { |x, y| x + y } # 더하기
calculate(10, 5) { |x, y| x * y } # 곱하기

# 5. &block 매개변수 (Explicit Block)
# 블록을 변수처럼 다루고 싶을 때 &를 사용하며, 이는 Proc 객체로 변환됩니다.
def run_block(&my_block)
  puts "블록 타입 확인: #{my_block.class}"
  my_block.call # yield 대신 .call 사용 가능
end

run_block { puts "명시적 블록 호출" }

# 6. 블록 활용 예시 (파일 열기 등)
# 블록을 사용하면 리소스 해제(close)를 자동으로 처리하는 패턴을 만들기 좋습니다.
def custom_open
  puts "리소스 연결..."
  yield
  puts "리소스 해제!"
end

custom_open { puts "데이터 작업 중..." }