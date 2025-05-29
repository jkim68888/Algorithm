// 제곱수 판별하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120909

// 이진 탐색 활용
function solution(n) {
  var low = 1;
  var high = n/2;

  for (i=low; i<=high; i++) {
    if (i * i == n) {
      return 1
    }
  };
  
  return 2;
}


// 제곱근 함수 활용 - sqrt()
function solution(n) {
  return Number.isInteger(Math.sqrt(n)) ? 1 : 2
}