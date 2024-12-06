//
//  main.swift
//  SeSAC
//
//  Created by 김동현 on 12/6/24.
//

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
var bmi = myweight / (myheight*myheight)

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
    //print("\(index+1)위: \(value)")
}

for musicidx in 0..<musicList.count {
    //print("\(musicidx+1)위: \(musicList[musicidx])")
}
