// 제곱수 판별하기
// https://school.programmers.co.kr/learn/courses/30/lessons/120909

// 선형 탐색
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

// 이진 탐색
function solution(n) {
  if (n <= 1) return 1;

  var low = 1;
  var high = Math.floor(n/2);

  while(low<=high) {
    var mid = Math.floor((low + high) / 2);
    const midSquare = mid*mid; 

    if (midSquare==n) {
      return 1;
    } else if (midSquare<n) {
      low = mid+1;
    } else {
      high = mid-1;
    }
  }

  return 2;
}


// 제곱근 함수 - sqrt()
function solution(n) {
  return Number.isInteger(Math.sqrt(n)) ? 1 : 2
}