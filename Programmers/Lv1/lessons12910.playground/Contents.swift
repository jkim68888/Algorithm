import UIKit

// 나누어 떨어지는 숫자 배열
// https://school.programmers.co.kr/learn/courses/30/lessons/12910

// 나의 풀이
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
	var resultArr: [Int] = []
	
	for el in arr {
		if el % divisor == 0 {
			resultArr.append(el)
		}
	}
	
	if resultArr.count == 0 {
		resultArr = [-1]
	}
	
	return resultArr.sorted()
}

solution([5,9,7,10], 5)
solution([2,36,1,3], 1)
solution([3,2,6], 10)


// 다른 풀이
func otherSolution(_ arr:[Int], _ divisor:Int) -> [Int] {
	let result = arr.filter{ $0 % divisor == 0 }.sorted()
	return result.count == 0 ? [-1] : result
}

otherSolution([5,9,7,10], 5)
otherSolution([2,36,1,3], 1)
otherSolution([3,2,6], 10)
