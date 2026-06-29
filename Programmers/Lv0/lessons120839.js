// 가위 바위 보
// https://school.programmers.co.kr/learn/courses/30/lessons/120839

// 나의 풀이
function solution(rsp) {
	var answer = '';
	for (let i = 0; i < rsp.length; i++) {
			if (rsp[i] === '0') {
				answer += '5';
			} else if (rsp[i] === '2') {
				answer += '0';
			} else if (rsp[i] === '5') {
				answer += '2';
			} else {
				answer += '';
			}
	}
	return answer;
}

// 다른 풀이
function otherSolution(rsp) {
	return rsp.split('').map(v => v === '2' ? '0' : v === '0' ? '5' : '2').join('');
}

solution('2')
solution('205')
solution('052')
solution('205002')
solution('022550')
solution('205002')