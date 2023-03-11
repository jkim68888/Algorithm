import Foundation

func solution(_ numbers:String) -> Int64 {
	let dic: [String: String] = ["zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"]
	var temp = numbers
	
	for i in dic {
		temp = temp.replacingOccurrences(of: i.key, with: i.value)
	}

	return Int64(temp)!
}

solution("onetwothreefourfivesixseveneightnine")
solution("onefourzerosixseven")
