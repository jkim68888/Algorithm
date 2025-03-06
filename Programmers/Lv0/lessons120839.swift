import Foundation

// 가위 바위 보
// https://school.programmers.co.kr/learn/courses/30/lessons/120839

// 나의 풀이
func solution(_ rsp:String) -> String {
    return rsp.map { char in
        if char == "0" {
            return "5"
        } else if char == "2" {
            return "0"
        } else if char == "5" {
            return "2"
        } else {
            return ""
        }
    }.joined()
}