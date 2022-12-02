import UIKit

// 서울에서 김서방 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/12919

// 나의 풀이
func solution(_ seoul:[String]) -> String {
	let idx = seoul.firstIndex(of: "Kim")
	
	return "김서방은 \(idx!)에 있다"
}

solution(["Jane", "Kim"])
