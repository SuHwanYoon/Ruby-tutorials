# ruby에서의 yield의 활용 예시 코드 작성
# # 1. yield의 기본 개념
# yield는 메서드 호출 시 함께 전달된 블록(block)을 실행하는 키워드입니다.
def simple_yield
  puts "메서드 실행 시작"
  yield # 전달된 블록이 여기서 실행됨
  puts "메서드 실행 종료"
end

simple_yield { puts ">> 블록 내부 실행 <<" }

# 2. yield에 인자 전달하기
# yield 뒤에 인자를 넣으면 블록 변수(|x|)로 값을 넘겨줄 수 있습니다.
def yield_with_arguments
  yield("Ruby", 3.3)
end

yield_with_arguments do |name, version|
  puts "언어: #{name}, 버전: #{version}"
end

# 3. block_given?을 이용한 안전한 호출
# 블록이 전달되지 않았을 때 yield를 호출하면 LocalJumpError가 발생하므로 체크가 필요합니다.
def safe_yield
  if block_given?
    yield
  else
    puts "전달된 블록이 없습니다."
  end
end

safe_yield # 에러 발생 안 함

# 4. 반복문에서의 yield 활용
# 커스텀 반복기(Iterator)를 만들 때 주로 사용됩니다.
def my_each(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

my_each([10, 20, 30]) { |num| puts "값: #{num}" }

# 5. yield의 반환값 활용
# 블록의 마지막 실행 결과가 yield의 반환값이 됩니다.
def transform_data(data)
  result = yield(data)
  puts "변환 결과: #{result}"
end

transform_data("hello") { |str| str.upcase.reverse }

# 6. 리소스 관리 패턴 (Around Method)
# 작업 전후의 공통 로직(Setup/Teardown)을 캡슐화할 때 유용합니다.
def wrap_with_border
  puts "=" * 20
  yield
  puts "=" * 20
end

wrap_with_border do
  puts "이 내용은 테두리 안에 출력됩니다."
  
end
