import Foundation

// 쿼드 압축 후 개수 세기
// https://school.programmers.co.kr/learn/courses/30/lessons/68936

func solution(_ arr: [[Int]]) -> [Int] {
    var zeros = 0
    var ones = 0
    
    func compressRegion(_ x: Int, _ y: Int, _ size: Int) {
        let firstVal = arr[x][y]
        var allSame = true
        
        for i in x..<x+size {
            for j in y..<y+size {
                if arr[i][j] != firstVal {
                    allSame = false
                    break
                }
            }
            if !allSame {
                break
            }
        }
        
        if allSame {
            if firstVal == 0 {
                zeros += 1
            } else {
                ones += 1
            }
        } else {
            let newSize = size / 2
            compressRegion(x, y, newSize)
            compressRegion(x, y+newSize, newSize)
            compressRegion(x+newSize, y, newSize)
            compressRegion(x+newSize, y+newSize, newSize)
        }
    }
    
    compressRegion(0, 0, arr.count)
    
    return [zeros, ones]
}
