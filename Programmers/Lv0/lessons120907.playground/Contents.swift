import Foundation

// OX퀴즈
// https://school.programmers.co.kr/learn/courses/30/lessons/120907

// 나의 풀이
func solution(_ quiz:[String]) -> [String] {
	let array = quiz.map { $0.split(separator: " ") }
	var result: [String] = []
	
	array.forEach {
		switch $0[1] {
		case "+" :
			result.append(Int($0[0])! + Int($0[2])! == Int($0[4]) ? "O" : "X")
		case "-":
			result.append(Int($0[0])! - Int($0[2])! == Int($0[4]) ? "O" : "X")
		default:
			break
		}
	}
	
	return result
}

solution(["3 - 4 = -3", "5 + 6 = 11"]) // ["X", "O"]
solution(["19 - 6 = 13", "5 + 66 = 71", "5 - 15 = 63", "3 - 1 = 2"]) // ["O", "O", "X", "O"]

