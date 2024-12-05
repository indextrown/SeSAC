/*
 
 집합(set)
 - 배열과 차이점: 중복되는 값을 받을 수 없다
 - 배열과 사용방법이 동일해서 항상 타입 어노테이션을 명시해야한다
 - 중복되는 값 사용 불가
 - 실행시마다 요소바 바뀜 -> 순서가 존재하지 않는다
 
 */

let array = [1, 1, 1, 1]
print(array)

let set: Set = [1, 1, 1]    // [1]
print(set)

let set2: Set = [3, 2, 1, 1]
print(set2)

let jack: Set = ["A", "B", "C", "D", "E"]
let minsu: Set = ["A", "B", "X", "Y", "Z"]
print(jack.intersection(minsu)) // 교집합
print(jack.union(minsu))        // 합집합
