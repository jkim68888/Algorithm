import Foundation

// 세균 증식
// https://school.programmers.co.kr/learn/courses/30/lessons/120910

// 나의 풀이
func solution(_ n:Int, _ t:Int) -> Int {
	return n * Int(pow(2.0, Float(t)))
}

solution(2, 10)
solution(7, 15)


// 다른 풀이
func otherSolution(_ n:Int, _ t:Int) -> Int {
	var temp = n
	
	for _ in 0..<t {
		temp = temp * 2
	}
	
	return temp
}

otherSolution(2, 10)
otherSolution(7, 15)
