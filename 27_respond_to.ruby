# respond_to에 대한 ruby 코드 작성
# respond_to? 메서드
# 객체가 특정 메서드를 호출할 수 있는지(응답할 수 있는지) 확인하는 메서드입니다.
# 주로 동적 타이핑 환경에서 안전하게 메서드를 호출하기 위해 사용됩니다.

# 1. 기본 사용법
str = "Hello"
puts "문자열이 length 메서드를 가졌는가?: #{str.respond_to?(:length)}" # true
puts "문자열이 push 메서드를 가졌는가?: #{str.respond_to?(:push)}"     # false (배열 메서드)

# 2. 조건문에서의 활용
# 객체의 타입을 직접 체크(is_a?)하는 것보다, 필요한 행위(메서드)를 할 수 있는지 체크하는 것이 더 Ruby다운 방식(Duck Typing)입니다.
def process_data(data)
  if data.respond_to?(:upcase)
    puts "대문자 변환: #{data.upcase}"
  elsif data.respond_to?(:abs)
    puts "절대값 계산: #{data.abs}"
  else
    puts "처리할 수 없는 데이터 타입입니다."
  end
end

process_data("ruby") # upcase 실행
process_data(-500)   # abs 실행

# 3. 심볼과 문자열 모두 사용 가능
# 관습적으로는 심볼(:method_name)을 더 많이 사용합니다.
puts "문자열 사용 확인: #{[1, 2].respond_to?('count')}" # true

# 4. send 메서드와 결합
# 메서드 존재 여부를 확인한 후 안전하게 동적 호출을 할 수 있습니다.
method_name = :reverse
puts "동적 메서드 실행: #{str.send(method_name)}" if str.respond_to?(method_name)
