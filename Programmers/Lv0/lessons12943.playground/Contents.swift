import UIKit

// 콜라츠 추측
// https://school.programmers.co.kr/learn/courses/30/lessons/12943


// 나의 풀이
func solution(_ num:Int) -> Int {
	var temp: Int = num
	var cnt: Int = 0
	
	while cnt < 501, temp != 1 {
		if temp % 2 == 0 {
			temp = temp / 2
		} else {
			temp = temp * 3 + 1
		}
		cnt += 1
	}

	return cnt == 501 ? -1 : cnt
}

solution(1)
solution(6)
solution(16)
solution(626331)
