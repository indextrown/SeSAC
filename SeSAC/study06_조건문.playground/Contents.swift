
// 여성? 남성?
let gender = false

if gender == true {
     print("저는 여성입니다.")
} else {
     print("저는 남성입니다.")
}

// 수화물 요금 안내
//let weight = Int.random(in: 1...20)
//
//// 변수가 왼쪽이 아닌 오른쪽에 있어도됨
//if weight > 15 {
//    print("\(weight)kg으로 수화물 요금을 내셔야 해요")
//}

// 회원가입
let age = Int.random(in: 1...100)

if age >= 14 {
    print("당신은 \(age)살이므로, 부모님 동의 없이 가입하실 수 있습니다.")
}

// TV 프로그램 추천
let select = "드라마"
if select != "드라마" {
    print("오늘은 태양의 후예 추천")
}

// 성적 장학금 추천
var gradePoint = 4.4

gradePoint = 3.0
if gradePoint <= 4.3 {
    print("아쉽지만 장학금 대상이 아니에요.")
}

// 닉넹밈 설정
let userNickname = "고래밥"

if userNickname == "바보" || userNickname == "말미잘" {
    print("이 닉네임은 사용할 수 없어요")
} else {
    print("이 닉네임은 사용가능해요!")
}

// 조건이 많아진다면...
let blacklist = ["바보", "말미잘", "해삼", "현금", "번호"]
blacklist.contains("바보")

if blacklist.contains(userNickname) == true {
    print("안됩니다!")
} else {
    print("됩니다!")
}

// 조건문(4)
// 쿠폰 서비스: 0~4, 5~9, 10~19, 20번 이상
var order = Int.random(in: 0...30)
//switch order {
//    case 0..<5:
//        print("브론즈")
//    default:
//        print(0)
//}


// MARK: - 모든 조건이 겹치지 않고, 대응할 수 있게 구현 필요
// MARK: - 값을 찾으면 다음 else 는 읽지 않고 끝낸다(원하는조건 찾으면)
if order >= 0 && order < 5 {
    print("쿠폰 5천원 트척!")
} else if order >= 5 && order < 10 {
    print("쿠폰 만원 투척!")
} else if order >= 0 && order < 5 {
    print("쿠폰 5천원 트척!")
} else if order >= 20 {
    print("5만원 투척!")
} else {
    print("오류 발생")
}


// MARK: - 원하는 조건을 끝내도 전부 순회함...
if order >= 0 && order < 5 {
    print("쿠폰 5천원 트척!")
}

if order >= 5 && order < 10 {
    print("쿠폰 만원 투척!")
}

if order >= 0 && order < 5 {
    print("쿠폰 5천원 트척!")
}

if order >= 20 {
    print("5만원 투척!")
}

// BMI 계산기
// 몸무게(kg) / 신장(m) * 신장(m)
// 18.5 이하는 저체중, 18.5 초과 23 미만 정상, 23이상 25미만 과제중, 25이상 비만
let height = 1.75
let weight = 75.0
var bmi = weight / (height * height)
bmi = 18.5

if bmi < 18.5 {
    print("저체중")
} else if bmi >= 18.5 && bmi < 23 {
    print("정상")
} else if bmi >= 23 && bmi < 25 {
    print("과체중")
} else if bmi >= 25 {
    print("비만")
} else {
    print("오류 발생")
    // 선택사항
}

switch bmi {
case ..<18.5: print("저체중")
case 18.5..<23: print("정상")
case 23..<25: print("과체중")
case 25...: print("비만")
default: print("오류")
}

// MARK: - 같은 단락, 똑같은역할, 조건이 많을 경우 효율적으로 대응가능 = swich(else 대신 default)
switch order {
case 0...5: print("쿠폰 5천원 투척!")
case 5..<10: print("쿠폰 만원 투척!")
case 10..<20: print("쿠폰 2만원 트척!")
case ...20:  print("5만원 투척!")
default: print("에러")   // 모든 경우의 수를 대응하기 위해 필요(필수)
    // 사용하지 않아도 되는 경우는 모든 경우위수를 케이스로 할떄? ex) 불타입..
}
