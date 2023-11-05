import Foundation

// 7의 개수
// https://school.programmers.co.kr/learn/courses/30/lessons/120912

// 나의 풀이
func solution(_ array:[Int]) -> Int {
	var count: Int = 0
	
	array.forEach {
		var num = $0
					
		while num > 0 {
			if num % 10 == 7 {
				count += 1
			}
			
			num /= 10
		}
	}
	
	return count
}

solution([7, 77, 17]) // 4
solution([10, 29]) // 0


// 다른 풀이
func otherSolution(_ array:[Int]) -> Int {
	return array.map { String($0) }.joined().filter { $0 == "7" }.count
}

otherSolution([7, 77, 17])
otherSolution([10, 29])
