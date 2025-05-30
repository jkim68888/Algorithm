import Foundation

// 나머지가 1이 되는 수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/87389

// 나의 풀이
func solution(_ n:Int) -> Int {
    for x in 2...n {
        if n % x == 1 {
            return x
        }
    }
    
    return n
}