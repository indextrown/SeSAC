// 16 형변환
let test = 100
print(type(of: test))

let testToString = String(test)
print(type(of: testToString))

// 17. 부동소수점
/*
 
 우리가 사는 세계
 1/10 = 0.1
 1/3 = 0.333.... 오차 발생
 
 컴퓨터 세계
 1/10 -> 0.1로 딱떨어지는게 아니라 영원히 떨어지지 않는수.. 
 그래서 어느 시점에서 끊어야 하기 때문에 오차 발생 -> 부동소수점 한계
 1byte = 1bit * 8
 

 부동소수점의 한계
 - 0.1 + 0.2 = 0.3000000000004..
 
 
 */

print(0.1+0.2)
