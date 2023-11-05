import Foundation

// 삼총사
// https://school.programmers.co.kr/learn/courses/30/lessons/131705

func solution(_ number:[Int]) -> Int {
	var result: Int = 0
	
	for i in 0..<number.count {
		for j in i+1..<number.count {
			for k in j+1..<number.count {
				if number[i] + number[j] + number[k] == 0 {
					result += 1
				}
			}
		}
	}

	return result
}

solution([-2, 3, 0, 2, -5]) // 2
solution([-3, -2, -1, 0, 1, 2, 3]) // 5
solution([-1, 1, -1, 1]) // 0
