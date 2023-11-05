import Foundation

// 종이 자르기
// https://school.programmers.co.kr/learn/courses/30/lessons/120922

func solution(_ M:Int, _ N:Int) -> Int {
	// 가로로 자르기: 세로수 - 1
	// 세로로 자르기: 가로수 - 1
	// 가로 자른 후 각각 세로수 만큼 반복해서 세로로 잘라야함
//	let result = (N - 1) + N * (M - 1)
	// 즉,
//	let result = M * N - 1

	return M * N - 1
}

solution(2,2) // 3
solution(2,5) // 9
solution(1,1) // 0

// 설명
func solution2(_ M:Int, _ N:Int) -> Int {
	var sliceHorizontalNumbers = N - 1
	var sliceVerticalNumbers = M - 1
	
	var firstSliceActionNumbers = sliceHorizontalNumbers
	var secondSliceActionNumbers = N * sliceVerticalNumbers
	
	let totalSliceActionNumbers = firstSliceActionNumbers + secondSliceActionNumbers
	
	return totalSliceActionNumbers
}
