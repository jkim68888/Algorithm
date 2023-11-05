import Foundation

// 삼각 달팽이
// https://school.programmers.co.kr/learn/courses/30/lessons/68645

func solution(_ n:Int) -> [Int] {
    //n의 갯수만큼 2차원배열을 만들어줌
    var answerArray = Array(repeating: [Int](), count: n)
    //가장 끝 숫자를 담을 변수
    var endNumber = Int()
    //시작할 때의 행을 정해줄 행
    var start = 0
    //밑에서 아래로 올라갈 때 끝나는 행
    var end = 1
    //가장 끝 배열의 크기를 정해줄 변수
    var floor = n - 1
    //몇 번째 반복되는지를 정할 변수
    var rep = 0
    //숫자를 저장할 변수
    var x = 1
    
    //이차원배열을 각 index에 맞게 크기를 정해줌
    for i in 1...n{
        answerArray[i-1] = Array(repeating: Int(), count: i)
    }
    //1부터 n까지 더해서 가장 끝값을 정해줌
    for i in 1...n {
        endNumber += i
    }
    
    while true {
        //위에서 아래로 내려갈 때
        for i in start...floor {
            answerArray[i][rep] = x
            if x != endNumber {
                x += 1
            }else {
                return makeArray(answerArray: answerArray)
            }
        }
        //가장 끝 배열을 채워줄 때
        for i in rep+1...floor-rep {
            answerArray[floor][i] = x
            if x != endNumber {
                x += 1
            }else {
                return makeArray(answerArray: answerArray)
            }
        }
        //밑에서 위로 올라갈 때
        for i in stride(from: floor-1, to: end-1, by: -1) {
            answerArray[i][i-rep] = x
            if x != endNumber {
                x += 1
            }else {
                return makeArray(answerArray: answerArray)
            }
        }
        //이제 한번 반복되었으므로 1을 더해줌
        rep += 1
        //시작하는 행에 2를 더해줌
        start += 2
        //끝나는 행에 2를 더해줌
        end += 2
        //가장 끝 숫자를 1 빼줌
        floor -= 1
    }
    
    return makeArray(answerArray: answerArray)
}

//2차원배열에 있는 숫자들을 차례로 배열안에 넣어주는 함수
func makeArray(answerArray:[[Int]]) -> [Int]{
    var answer = [Int]()
    for array in answerArray {
        answer.append(contentsOf: array)
    }
    return answer
}
