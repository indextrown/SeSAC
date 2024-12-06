// 함수: 독립적으로 처리할 수 있는 부분 -> 구조화
// 같은 코드를 여러번 작성할 필요가 없어 효율적!

// 함수는 2가지 종류
// 애플이 만든 함수, 사용자 정의 함수

func welcomeMessage(nickname: String) {
    print("안녕하세요 \(nickname)님, 반갑습니다")
}

//welcomeMessage(nickname: "인덱스")

func changeProgram(money: Int, product: Int) {
    let change = money - product
    
    let rest500 = change / 500
    let rest100 = (change % 500) / 100
    
    print("거스름돈 \(change)원을, 500원 \(rest500)개, 100원 \(rest100)개로 거슬러 주었습니다. ")
}

//changeProgram(money: 5000, product: 3800)
//changeProgram(money: 2000, product: 100)


// (): 함수 호출 연산자
func calculateWater(height: Int, weight: Double) {
    let waterGuide = (Double(height) + weight) / 100
    print("하루 물 권장 섭취량은 \(waterGuide) 입니다.")
}

calculateWater(height: 180, weight: 80)
