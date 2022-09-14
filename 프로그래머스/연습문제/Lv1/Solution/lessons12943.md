# 콜라츠 추측

### https://school.programmers.co.kr/learn/courses/30/lessons/12943

<br/>

### 풀이 1

```Swift
func solution(_ num:Int) -> Int {
	var temp: Int = num
	var cnt: Int = 0

	while cnt < 501, temp != 1 {
		if temp % 2 == 0 {
			temp = temp / 2
		} else {
			temp = temp * 3 + 1
		}
		cnt += 1
	}

	return cnt == 501 ? -1 : cnt // ✅
}
```

<br/>

### 풀이 2

```Swift
func solution(_ num:Int) -> Int {
	var temp: Int = num
	var cnt: Int = 0

	while cnt < 501, temp != 1 {
		if temp % 2 == 0 {
			temp = temp / 2
		} else {
			temp = temp * 3 + 1
		}
		cnt += 1
	}

	return temp == 1 ? cnt : -1 // ✅
}
```

<br/>

두개 해답의 `작업 반복 횟수(cnt)`를 구하는 풀이 방법은 똑같다.
<br/>
하지만, `500번 반복할 때까지 1이 되지 않는다면 –1을 반환해 주세요.` 에 대한 풀이 방법이 다르다.

<br/>

### 500번 반복할 때까지 1이 되지 않는다면 –1을 반환해 주세요.

> 위 문장이 콜라츠 추측의 핵심은 아니지만, 이 부분과 관련해서 왜 [풀이2](#풀이-2) 가 성립하는지에 대해 이해하는데 시간이 꽤 걸려서 한번 정리해보려고 한다.

<br/>

### [풀이 1](#풀이-1)

```Swift
return cnt == 501 ? -1 : cnt
```

cnt가 반복횟수이니까 cnt가 501이 되면 500번 이상 반복할때까지 1이 되지 않았다는 것이므로 -1을 반환하면 된다.
<br/><br/>
~~풀이1 의 이 문장은 너무나도 당연하다.~~
<br/><br/>
그렇다면 풀이2 는??
<br/><br/>
~~풀이2 도 물론 너무도 당연하다고 생각할수도 있지만,, 난 코린이이기 때문에.. ㅎㅎㅎ 한번에 이해가 가지 않았다. 하지만 이해하고나니, 너무도 당연한것이여서 이렇게 정리하는게 사실 부끄러울 정도지만,, 그래도 정리를 하려고 한다. ㅎㅎ~~

<br/>

### [풀이 2](#풀이-2)

```Swift
return temp == 1 ? cnt : -1
```

여기서 temp는 입력값인 num을 담고 있는 변수이다.
<br/>
`temp`는 while문을 돌면서 `값`이 계속해서 `바뀌게 된다.`
<br/>
while문을 탈출하고 나면 temp에는 1이 담겨있거나, 그렇지 않은 경우로 나뉘게 될 것이다.
<br/>

> while문을 벗어나게 되는 경우는
> <br/>
>
> 1. temp가 1이되어 while문의 `temp != 1` 조건을 만족하지 않아 탈출한다.
> 2. cnt가 500이 됬는데도 temp가 1이 아닌경우, while문의 `cnt < 501` 조건을 만족하지 않아 탈출한다. 이 경우, temp는 `1외의 다른 수`가 되게 된다.

<br/>
따라서 temp가 1인 경우엔 cnt를 리턴하고, temp가 1이 아니면 -1을 리턴하면 된다.
