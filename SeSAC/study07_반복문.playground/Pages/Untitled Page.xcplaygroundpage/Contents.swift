// 음악 차트
var musicList = ["좋은 날", "잔소리", "Dynamic", "OMG"]

for (index, value) in musicList.enumerated() {
    print("\(index+1)위: \(value)")
}

for musicidx in 0..<musicList.count {
    print("\(musicidx+1)위: \(musicList[musicidx])")
}
