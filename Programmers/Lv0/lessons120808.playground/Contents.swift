import Foundation

// 분수의 덧셈
// https://school.programmers.co.kr/learn/courses/30/lessons/120808

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
	var newNumer: Int = 0
	var newDenom: Int = 0
	
	// 두 분수를 더한 값의 분자, 분모 구하기
	newNumer = numer1 * denom2 + numer2 * denom1
	newDenom = denom1 * denom2
	
	// 최대공약수 구하기
	let gcd: Int = getGreatestCommonDivisor(newNumer, newDenom)
	
	// 기약 분수의 분자, 분모 반환
	return [newNumer/gcd, newDenom/gcd]
}

// 최대공약수 구하는 재귀함수
func getGreatestCommonDivisor(_ a: Int, _ b: Int) -> Int {
	if b == 0 {
		return a
	} else {
		return getGreatestCommonDivisor(b, a%b)
	}
}
