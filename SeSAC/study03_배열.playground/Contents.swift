// 배열: 동일한 타입입으로 이어져 있다.
// 같은 타입을 가질 수 있다, 인덱스를 가지고 있다
var arr = ["월", "화", "수", "목", "금"]

// 배열 중간에 삽입: insert
arr.insert("??", at: 2)
print(arr)

// 배열 마지막에 삽입: append
arr.append("!!")
print(arr)

// 인덱스 요소 제거
arr.remove(at: 2)
print(arr)

// Runtime Error
//arr[100]

//7. 최근 검색어
var searchList: [String] = []
searchList.insert("원피스", at: 0)
searchList.insert("신발", at: 0)
searchList.insert("양말", at: 1)
searchList.append("바지")
print(searchList)

searchList.append(contentsOf: ["A", "B", "C"])
print(searchList)

searchList.remove(at: 1)
print(searchList)

searchList.removeAll()
print(searchList)

//8. 2차원 배열
let sample: [[Int]] = [[1, 2, 3], [5, 5, 3], [2, 3], [5, 4, 3, 2]]
sample.count
let result = sample[3]
result[1]
