import Foundation

// 자릿수 더하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12931

// 나의 풀이
func solution(_ n:Int) -> Int {
	var answer:Int = 0
	
	var array = String(n).map{ String($0) }
	answer = array.reduce(0) { Int($0) + Int($1)! }
	
	return answer
}

solution(123)
solution(987)
