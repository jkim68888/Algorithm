import UIKit

// 정수 내림차순으로 배치하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12933

// 나의 풀이
func solution(_ n:Int64) -> Int64 {
	
	var arr: [String] = String(n).map { String($0) }
	
	arr = arr.sorted().reversed()
	
	let result = arr.joined(separator: "")
	
	return Int64(result)!
}

solution(118372) //873211



// 다른 풀이
func otherSolution(_ n:Int64) -> Int64 {
	var num = n
	var numArr: [Int64] = []
	
	while(num > 0) {
		numArr.append(num % 10)
		num /= 10
	}
	
	numArr.sort(by: >)
	
	var result: Int64 = 0
	for num in numArr {
		result += num
		result *= 10
	}
	
	return result / 10
}


