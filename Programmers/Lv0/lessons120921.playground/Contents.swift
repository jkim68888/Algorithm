import Foundation

// 문자열 밀기
// https://school.programmers.co.kr/learn/courses/30/lessons/120921

// 나의 풀이
func solution(_ A:String, _ B:String) -> Int {
    var count = 0
    var tempA = A
    
    for _ in A {
        if tempA == B {
            return count
        }
        
        var startIndex = tempA.startIndex
        var endIndex = tempA.index(startIndex, offsetBy: A.count - 1)
        tempA = "\(tempA.last!)\(tempA[startIndex..<endIndex])"
        
        print(tempA)
        
        count += 1
    }
    
    
    return -1
}

solution("hello", "ohell")
solution("apple", "elppa")
solution("atat", "tata")
solution("abc", "abc")
