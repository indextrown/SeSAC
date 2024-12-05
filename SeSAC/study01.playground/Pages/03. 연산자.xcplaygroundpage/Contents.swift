//3. 거스름돈 계산기
// 5000원 - 4100원 = 900원
// 10000원 - 3600원 = 6400원 -> 5000 1장 1000 1장 100 4장


let a = 5
let b = 2

print(a / b)
print(a % b)


let c = 10.0
let d = 3.0

print(c/d)
//print(c%d) // 컴파일 오류 발생 (나머지는 소수점 타입에서 의미 없다)


//3. 거스름돈 구하기((그리디 알고리즘)
let money = 5000
let product = 4100
let change = money - product

// 500원과 100원만 가능, 10원 단위의 돈과 상품은 없다고 가정
// 5000 - 4900 = 900
// 900 / 500 = 1...400
let rest500 = change / 500
let rest100 = (change % 500) / 100
print("500원: \(rest500)\n100원: \(rest100)")

//4. 영화 러닝타임 계산기
let runtime = 2164 // 1일 3시간 34분
let day = runtime / (60 * 24)
let hour = (runtime % (60 * 24)) / 60
let min = (runtime % (60 * 24)) % 60
print("영화를 지금까지 \(day)일 \(hour)시간 \(min)분 보았다")

//5. 룰 권장 섭취량 계산기: 키 + 몸무게 / 100
// 타입은 같은타입끼리간 연산 사능하다
let height: Int = 175
let weight: Double = 75

// Double을 Int로 바꾸면 소수점 버린다
let waterGuide = (Double(height) + weight) / 100
print("하루 물 권장 섭취량은 \(waterGuide)L")



