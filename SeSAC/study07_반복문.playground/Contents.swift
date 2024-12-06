// MARK: - 반복문 = iteration

let dict = ["영화": 61.9, "대사": 11.2, "스타그램": 1000]

// 음악 차트
var musicList = ["좋은 날", "잔소리", "Dynamic", "OMG"]

for (index, music) in musicList.enumerated() {
    print("\(index+1)워: \(music)")
}

for index in 0..<musicList.count {
    print("\(index+1)워: \(musicList[index])")
}
