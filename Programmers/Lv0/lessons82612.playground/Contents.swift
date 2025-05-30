import Foundation

// 부족한 금액 계산하기
// https://school.programmers.co.kr/learn/courses/30/lessons/82612

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
	var answer: Int64 = 0
	var newPrice: Int = 0
	var remain: Int = money
	
	for i in 1...count { 
		newPrice = price * i
		remain -= newPrice
		
		if i == count {
			if remain >= 0 {
				answer = 0
			} else {
				answer = Int64(remain * -1)
			}
		}
	}
	
	return answer
}

solution(3, 20, 4) // 10
