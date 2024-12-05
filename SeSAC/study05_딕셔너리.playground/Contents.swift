/*
 
 딕셔너리
 - 키와 값 -> 쌍으로 이루어져있다
 - 순서가 존재하지 않는다
 - ex) 중복이 존재할 수 없는 해시태그
 - 추가와 수정이 동일하다
 
 */


// 학번 관리
var students: [Int: String] = [101: "홍길동", 102: "인덱스"]
//print(students[101]!)

// MARK: - 인덱스아님!! 접근
students[103] = "김민수"
print(students[103]!)

// 수정
students[101] = "앨런"
print(students)

// 수정
students.updateValue("부트캠프", forKey: 101)
print(students)

// 제거
students.removeValue(forKey: 102)
print(students)

// 해시태그 관리
var hashtag: [String: Int] = ["영화명대사": 10000, "영화스타그램": 5000, "영화글귀": 2000]

