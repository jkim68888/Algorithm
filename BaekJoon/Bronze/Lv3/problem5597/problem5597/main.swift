//
//  main.swift
//  problem5597
//
//  Created by 김지현 on 2024/05/29.
//

import Foundation

// 과제 안 내신 분..?
// https://www.acmicpc.net/problem/5597

var array: [Int] = []

for _ in 1...30 {
	array.append(0)
}

for _ in 1...28 {
	let input = readLine() ?? ""
	let index = Int(input) ?? 0
	
	array[index - 1] = 1
}

for i in 1...30 {
	if array[i - 1] == 0 {
		print(i)
	}
}
