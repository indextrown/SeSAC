//
//  final.swift.swift
//  SeSAC
//
//  Created by 김동현 on 12/6/24.
//

/*
 
 MARK: 변수 / 상수
 - 타입 어노테이션
 - 타입 추론
 - 형변환
 
 MARK: 타입(자료형)
 - 기본 타입: Int, Float, Double, Bool
 - 집단자료형: Array, Dictionary, Set
 - \(): String interpolation
 - """""": multi line strings
 - a != A
 - 옵셔널 타입(nil을 가질 수 있다)
 -> !, 조건문, 닐 코얼레이싱(??) == nil 변환연산자라고도함
 
 MARK: 연산자
 - ...
 - ..<
 - /, %, !=, ==, ??
 
 MARK: 조건
 - if else
 - switch default
 
 MARK: 반복
 - for
 
 MARK: 함수: func()
 - (): 함수 호출 연산자: 매개변수를 넣을 수 있다
 - {}: 중괄호안에 작성
 
 */

import Foundation

// 랜덤 숫자
let count = Int.random(in: 0...3)

// 배열 랜덤
let genereList = ["로맨스", "SF", "스릴러", "액션", "코미디"]
let genre = genereList.randomElement()!

// MARK: - 배열
var week = ["월", "화", "수", "목", "금"]

// 배열 중간에 삽입
week.insert("토", at: 0) // ["토", "월", "화", "수", "목", "금"]

// 배열 마지막에 삽입
week.append("일")        // ["토", "월", "화", "수", "목", "금", "일"]

// 인덱스로 요소 제거
week.remove(at: 0)      // ["월", "화", "수", "목", "금", "일"]

// 배열 전체 비우기
week.removeAll()        // []

// 배열에 여러개 넣기
week.append(contentsOf: ["1", "2", "3"])    // ["1", "2", "3"]

// 런타임 에러
// week[100]

// 2차원 배열
let sample: [[Int]] = [[1, 2, 3], [4, 5], [6, 7, 8]]    // [1, 2, 3, 4, 5, 6, 7, 8]
// print(sample.flatMap{ $0 })
 
// MARK: - Set
let set: Set = [1, 1, 1, 1] // [1]

let index: Set = [1, 2, 3, 4, 5]
let minsu: Set = [4, 5, 6, 7 ,8]

// 교집합 합집합
// print(index.intersection(minsu))        // MARK: - 외우기
// print(index.union(minsu))

// MARK: - 딕셔너리(검색 옵셔널)
var students: [Int: String] = [123: "김동현", 456: "인덱스"]
// print(students[123]!)

// 수정 또는 추가
students[123] = "관리자"

// 수정2
students.updateValue("관리자2", forKey: 123)

// 제거
students.removeValue(forKey: 123)

// MARK: - 조건문
var gender = false
if gender == true {
    // print("남자입니다")
} else {
    // print("여자입니다")
}

// 수하물 용량
let weight = Int.random(in: 0...30)
if weight >= 20 {
    // print("\(weight): 용량 초과입니다")
}

// 닉네임 설정
let userNickname = "인덱스"
if userNickname == "바보" || userNickname == "멍청이" {
    // print("이 닉네임은 사용하실 수 없습니다")
} else {
    // print("사용 가능한 닉네임 입니다!")
}

// 조건이 많아진다면
let blackList = ["바보", "멍충이", "말미잘"]

if blackList.contains(userNickname) == true {
    // print("사용할 수 없습니다")
} else {
    // print("사용 가능합니다")
}

// MARK: - 조건문
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
case 0..<5:
    print("쿠폰 5천원")
case 5..<10:
    print("쿠폰 만원")
case 10..<20:
    print("쿠폰 2만원")
case 20...:
    print("쿠폰 5만원")
default:
    print("오류 발생")
}

let myheight = 1.75
let myweight = 75.0
let bmi = myweight / (myheight * myheight)

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
let musicList = ["좋은 날", "잔소리", "Dynamic", "OMG"]
for (i, j) in musicList.enumerated() {
    print("\(i+1)위: \(j)")
}

for musicIdx in 0..<musicList.count {
    print("\(musicIdx+1)위: \(musicList[musicIdx])")
}
    
// MARK: - 함수
// %: Percent Sign                  MARK: 3개 외우기
// {}: Brace
// []: Bracket

func fundMultipleNumber(numbers: [Int]) {
    for number in numbers {
        if number % 4 == 0 || number % 6 == 0 {
            print(number)
        }
    }
}
// fundMultipleNumber(numbers: [1, 2, 3, 4, 5, 6])

func baseScore() {
    let score = [100, 270, 90, 120, 240, 300]
    var best: [Int] = []
    
    for num in score {
        if num >= 200 {
            best.append(num)
        }
    }
    print(best)
}
// baseScore()

func baseScore2() {
    let score = [100, 270, 90, 120, 240, 300]
    var best: Int = 0
    
    for num in score {
        if num >= 200 {
            best = best + 1
        }
    }
    print(best)
}

func changeProgram(money: Int, product: Int) {
    let change = money - product
    let result500 = change / 500
    let result100 = (change % 500) / 100
    
    print("""
    거스름돈 \(change)원을,
    500원 \(result500)개,
    100원 \(result100)개로
    거슬러 주었습니다.
    """)
}
// changeProgram(money: 5000, product: 4200)

func calculateWater(height: Int, weight: Double) {
    let waterGuide = (Double(height) + weight) / 100
    print("하루 물 권장 섭취량은 \(waterGuide) 입니다.")
}

// MARK: - 옵셔널
var numbers = [1, 2, 3, 4, 5]

numbers.removeAll()
if numbers.randomElement() == nil {
    print("에러")
} else {
    print("성공")
}


let name: String? = "인덱스"
print(name ?? "없음")
