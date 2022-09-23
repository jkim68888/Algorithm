import UIKit

// 하샤드 수
// https://school.programmers.co.kr/learn/courses/30/lessons/12947

// 나의 풀이
func solution(_ x:Int) -> Bool {
	return x % String(x).reduce(0){ $0 + Int(String($1))! } == 0
}

solution(10)
solution(11)


// 다른 풀이
func otherSolution(_ x:Int) -> Bool {
	var result = 0

	for num in String(x) {
		result += Int(String(num))!
	}

	return x % result == 0
}

otherSolution(10)
otherSolution(11)


