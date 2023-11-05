import UIKit

// 문자열 내 마음대로 정렬하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12915

// 내 풀이
func solution(_ strings:[String], _ n:Int) -> [String] {
	var index = strings[0].index(strings[0].startIndex, offsetBy: n)
	
	let result = strings.sorted { str1, str2 in
		if str1[index] == str2[index] {
			return str1 < str2
		}
		return str1[index] < str2[index]
	}
	
	return result
}

solution(["sun", "bed", "car"], 1)
solution(["abce", "abcd", "cdx"], 2)
