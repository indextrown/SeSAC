var number = [1, 2, 3, 4, 5]

// MARK: - nil이라는 값을 만나게 되면 앱이 실행 중 꺼질 수 있고 런타임 오류 발생 가능하다..
// 그래서 !사용은 굉장히 위험하다
// 안전하게 쓰려면 조건문을 쓰자

// 배열에 요소가 하나라도 없으면 문제가 생길 수 있어서 불안해서 옵셔널이라는 박스로 감싼다
print(number.randomElement()!)
number.removeAll()
print(number.randomElement())

var age = "13"
print(Int(age))     // Optional(13)

var test = "안녕"
number = [1, 2, 3, 4, 5]

let result = number.randomElement()

if result == nil {
    print("오류가 발생했어요!")
} else {
    print(result!)
}

// MARK: - 다른 프로그래밍 언어 NULL
// NULL, nil 은유사한 개념임
// 값이 없는 경우 대응핤 수 있는요소
// 사용자가닉넴안할떄..

var name: String? = "고래밥"
// name = nil
print(name)

// 1. 100% 값이 문제 없는 경우(nil이면 앱이 꺼짐)
print(name!)

// 2. if - else
if name == nil {
    print("손님")
} else {
    print(name!)
}

// 3. nil coalescing == nil 변환 연산자 ??
print(name ?? "손님") // nil이면 손님으로 대체 출력



/*
 
 변수 / 상수
 - 타입 어노테이션
 - 타입 추론
 - 형변환
 
 타입(자료형)
 - 기본Int, String< Bool, Double
 - 집단자료형 Array, Dictionary, Set
 - \(): String Interpolation
 - """""": multi line strings
 - a != A
 - 옵셔널 타입(nil을 가질 수 있음)
 -> 내용 가져오려면
 - !, if - else, ??
 
 연산자
 - 범위연산자
 - ...
 - ..<
 - /, %, == != ??(nil 변환 연산자)
 
 조건
 - if else
 - switch default
 
 반복
 - for
 
 함수
 - func ~() {}
 - () = 함수 호출 연산자 = 매개변수 넣을 수 있다
 - {} 기능은 중괄호안에 작성
 
 */
