import UIKit

// 제일 작은 수 제거하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12935

// 나의 풀이
func solution(_ arr:[Int]) -> [Int] {
	var result: [Int] = []
	
	guard let minElement = arr.min() else { return [-1] }
	guard let idx = arr.firstIndex(of: minElement) else { return [-1] }
	
	var tempArr = arr
	tempArr.remove(at: idx)
	result = tempArr
	
	if result.count == 0 {
		result = [-1]
	}
	
	return result
}

solution([4,3,2,1])
solution([3,4,2,1])
solution([10])

// 다른 풀이
func otherSolution(_ arr:[Int]) -> [Int] {
	var result: [Int] = arr
	result.remove(at: result.firstIndex(of: result.sorted()[0])!)
	return result.isEmpty ? [-1] : result
}

otherSolution([4,3,2,1])
otherSolution([3,4,2,1])
otherSolution([10])
