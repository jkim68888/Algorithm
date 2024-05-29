import Foundation

// 킹, 퀸, 룩, 비숍, 나이트, 폰
// https://www.acmicpc.net/problem/3003

var inputArray: [Int] = readLine()!.components(separatedBy: " ").map { Int($0)! }
var array: [Int] = [1, 1, 2, 2, 2, 8]

for (idx, el) in array.enumerated() {
	print(el - inputArray[idx], terminator: " ")
}
