import Foundation

// 제곱수 판별하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120909

// 선형 탐색
func solution(_ n:Int) -> Int {
  for i in 1...n/2 {
    if i*i == n {
      return 1
      break
    } else {
      continue
    }
  }

  return 2
}

// 이진 탐색
func solution(_ n:Int) -> Int {
  if n == 1 { return 1 }

  var low: Int = 1
  var high: Int = n/2

  while low <= high {
    var mid: Int = (low+high)/2
    var midSquare: Int = mid*mid

    if midSquare == n {
      return 1
    } else if midSquare < n {
      low = mid+1
    } else {
      high = mid-1
    }
  }

  return 2
}

// 제곱근 함수 - sqrt()
func solution(_ n:Int) -> Int {
  return sqrt(Double(n)) == floor(sqrt(Double(n))) ? 1 : 2
}