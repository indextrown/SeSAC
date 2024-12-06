// 4의 배수와 6의 배수를 찾는 기능
// %: Percnt Sign, {}: Brace, []: Bracket


func findMultipkeNumber(_ randomNumber: [Int]) {
     
    for number in randomNumber {
        
        if number % 4 == 0 || number % 6 == 0 {
            print(number)
        }
    }
}

// findMultipkeNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])

func beseScore() {
    let score = [100, 270, 90, 120, 240, 300]
    var best: [Int] = []
    
    for i in score {
        if i >= 200 {
            best.append(i)
        }
    }
    print("우수자는 총 \(best.count)명입니다.")
}

func beseScore2() {
    let score = [100, 270, 90, 120, 240, 300]
    var best = 0
    
    for i in score {
        if i >= 200 {
            best = best + 1
        }
    }
    print("우수자는 총 \(best)명입니다.")
}


beseScore2()
