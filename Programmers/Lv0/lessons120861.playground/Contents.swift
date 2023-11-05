import Foundation

// 캐릭터의 좌표
// https://school.programmers.co.kr/learn/courses/30/lessons/120861

// 나의 풀이
func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
	var num1: Int = 0
	var num2: Int = 0
	
	let board1: Int = board[0] / 2
	let board2: Int = board[1] / 2
	
	keyinput.forEach {
		let temp = $0
		if temp == "left" {
			if num1 != -board1 {
				num1 -= 1
			}
		} else if temp == "right" {
			if num1 != board1 {
				num1 += 1
			}
		} else if temp == "down" {
			if num2 != -board2 {
				num2 -= 1
			}
		} else if temp == "up" {
			if num2 != board2 {
				num2 += 1
			}
		}
	}
	
	return [num1, num2]
}

solution(["left", "right", "up", "right", "right"], [11, 11])
solution(["down", "down", "down", "down", "down"], [7, 9])

// 다른 풀이
// if문 대신 switch문을 쓰는게 더 가독성이 좋아 보이는것 같다.
