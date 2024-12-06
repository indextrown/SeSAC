//
//  main.swift
//  SeSAC
//
//  Created by 김동현 on 12/6/24.
//

/*
 
 변수 / 상수
 - 타입 어노테이션
 - 타입 추론
 - 형변환
 
 타입(자료형)
 - 기본Int, String, Bool, Double
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
 - /, %, ==, !=, ??(nil 변환 연산자)
 
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

import Foundation

// 랜덤 숫자
let count = Int.random(in: 0...4)

// 배열 랜덤
let genrelist = ["로맨스", "SF", "스릴러", "액션", "코미디"]

// 배열 랜덤2
let genre = genrelist.randomElement()!

// MARK: - 배열
var week = ["월", "화", "수", "목", "금"]

// 배열 중간에 삽입
week.insert("토", at: 0) // ["토", "월", "화", "수", "목", "금"]

// 배열 마지막에 삽입
week.append("일")        // ["토", "월", "화", "수", "목", "금", "일"]

// 인덱스 요소 제거
week.remove(at: 0)      // ["월", "화", "수", "목", "금", "일"]

// 배열 전체 비우기
week.removeAll()

// 여러개 넣기
week.append(contentsOf: ["월", "화", "수"])

// 런타임 에러
// week[100]

// 2차원 배열
let sample: [[Int]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] // 3

// MARK: - Set
let set: Set = [1, 1, 1, 1]     // [1]
let set2: Set = [3, 2, 1, 1]    // [3, 2, 1] (순서 매번 다름)

let index: Set = ["A", "B", "C", "D", "E"]
let minsu: Set = ["A", "B", "X", "Y", "Z"]

// 교집합
// print(index.intersection(minsu))    // ["A", "B"]   (순서 매번 다름)

// 합집합
// print(index.union(minsu))           // ["A", "B", "C", "D", "E", "X", "Y", "Z"] (순서는 매번다름)

// MARK: - 딕셔너리
var students: [Int: String] = [123: "홍길동", 456: "인덱스"]

// 딕셔너리는 인덱스로 접근하는게 아니라 키로 접근
// 추가
students[0] = "관리자" // [123: "홍길동", 0: "관리자", 456: "인덱스"]

// 수정
students[123] = "김동현"                   // [0: "관리자", 456: "인덱스", 123: "김동현"]

// 수정
students.updateValue("새싹이", forKey: 0) // [0: "새싹이", 456: "인덱스", 123: "김동현"]

// 제거
students.removeValue(forKey: 0)         // [123: "김동현", 456: "인덱스"]

// 해시태그 관리
var hashtag: [String: Int] = ["새싹": 10000, "도봉구": 20000]

// MARK: - 조건문
let gender = true

if gender == true {
    // print("저는 남성입니다")
} else {
    // print("저는 여성입니다")
}

// 소하물 용량
let weight = Int.random(in: 0...20)
if weight >= 20 {
    // print("용량 초과")
}

// 닉네임 설정
let userNickname = "김동현"
if userNickname == "바보" || userNickname == "멍청이" {
    // print("이 닉네임은 사용하실 수 없습니다")
} else {
    // print("\(userNickname): 이 닉네임은 사용 가능해요!")
}

// 조건이 많아진다면
let blackList = ["바보", "멍충이", "말미잘"]
// print(blackList.contains("바보"))         // true
// print(blackList.contains(userNickname))  // false

if blackList.contains(userNickname) == true {
    // print("안됩니다")
} else {
    // print("됩니다")
} // 됩니다

// MARK: - 조건문
// 값을 찾으면 다음 else는 읽지 않고 끝낸다
// MARK: - else안쓰면 원하는 조건을 끝내도 전부 순회함...
let order = Int.random(in: 0...30)
if order >= 0 && order < 5 {
    print("쿠폰 5천원")
} else if order >= 5 && order < 10 {
    print("쿠폰 만원")
} else if order >= 10 && order < 20 {
    print("쿠폰 2만원")
} else if order >= 20 {
    print("쿠폰 5만원")
} else {
    print("오류 발생")
}
    
switch order {
case 0..<5: print("쿠폰 5천원")
case 5..<10: print("쿠폰 만원")
case 10..<20: print("쿠폰 2만원")
case 20...: print("쿠폰 5만원")
default: print("에러")    // 모든 경우의 수를 대응하기 위해 필요(필수)
}


// bmi 계산기
// 몸무게(kg) / 신장(m) * 신장(m)
let myheight = 1.75
let myweight = 75.0
let bmi = myweight / (myheight*myheight)

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
}

switch bmi {
case ..<18.5: print("저체중")
case 18.5..<23: print("정상")
case 23..<25: print("과체중")
case 25...: print("비만")
default: print("오류 발생")
}

// MARK: - 반복문
var musicList = ["좋은 날", "잔소리", "Dynamic", "OMG"]

for (index, value) in musicList.enumerated() {
    print("\(index+1)위: \(value)")
}

for musicidx in 0..<musicList.count {
    print("\(musicidx+1)위: \(musicList[musicidx])")
}

// MARK: - 함수
// %: Percnt Sign, {}: Brace, []: Bracket

func findMultipleNumber(_ randomNumber: [Int]) {
    for number in randomNumber {
        if number % 4 == 0 || number % 6 == 0 {
            print(number)
        }
    }
}
// findMultipleNumber([4, 8, 12, 16])

func baseScore() {
    let score = [100, 270, 90, 120, 240, 300]
    var best: [Int] = []
    
    for i in score {
        if i > 200 {
            best.append(i)
        }
    }
    print("우수자는 총 \(best.count)명 입니다.")
}
// baseScore()

func baseScore2() {
    let score = [100, 270, 90, 120, 240, 300]
    var best: Int = 0
    
    for i in score {
        if i > 200 {
            best = best + 1
        }
    }
    print("우수자는 총 \(best)명 입니다.")
}
// baseScore2()

// 함수: 독립적으로 처리할 수 있는 부분 -> 구조화
// 같은 코드를 여러번 작성할 필요가 없어 효율적!
// 함수는 2가지 종류
// 애플이 만든 함수, 사용자 정의 함수
func welcomeMessage(nickname: String) {
    print("hello \(nickname)")
}
//welcomeMessage(nickname: "Index")

func changeProgram(money: Int, product: Int) {
    let change = money - product
    let rest500 = change / 500
    let rest100 = (change % 500) / 100
    
    print("""
    거스름돈 \(change)원을,
    500원 \(rest500)개,
    100원 \(rest100)개로
    거슬러 주었습니다.
    """)
}
// changeProgram(money: 5000, product: 3800)

func calculateWater(height: Int, weight: Double) {
    let waterGuide = (Double(height) + weight) / 100
    print("하루 물 권장 섭취량은 \(waterGuide) 입니다.")
}
//calculateWater(height: 175, weight: 75)


// MARK: - 옵셔널
// nil이라는 값을 만나게 되면 앱이 실행 중 꺼질 수 있고 런타임 오류 발생 가능하다..
// 그래서 !사용은 굉장히 위험하다
// 안전하게 쓰려면 조건문을 쓰자
var number = [1, 2, 3, 4, 5]
// 배열에 요소가 하나라도 없으면 문제가 생길 수 있어서 불안해서 옵셔널이라는 박스로 감싼다
print(number.randomElement()!)
number.removeAll()
//print(number.randomElement())

