import Foundation

// 인덱스 바꾸기
// https://school.programmers.co.kr/learn/courses/30/lessons/120895

// 나의 풀이
func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
	
	var array = my_string.map{ String($0) }
	var item1 = array[num1]
	var item2 = array[num2]
	
	array[num1] = item2
	array[num2] = item1

	return array.joined()
}

solution("hello", 1, 2)
solution("I love you", 3, 6)



// 다른 풀이
func otherSolution(_ myString: String, _ num1: Int, _ num2: Int) -> String {
	var array = ArraySlice(myString)
	array.swapAt(num1, num2)
	
	return array.map { String($0) }.joined()
}

