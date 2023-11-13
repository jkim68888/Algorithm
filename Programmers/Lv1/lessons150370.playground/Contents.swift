import Foundation

// 개인정보 수집 유효기간
// https://school.programmers.co.kr/learn/courses/30/lessons/150370

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var termsArr = terms.map { $0.split(separator: " ") }
    var privaciesArr = privacies.map { $0.split(separator: " ") }
    var result: [Int] = []
    
    privaciesArr.enumerated().forEach { idx, privacy in
        let date: String = String(privacy[0]) // 개인정보 수집된 날짜 문자열
        let type: String = String(privacy[1]) // 약관 종류
                      
        termsArr.forEach { term in
            if term[0] == type { // 약관 종류
                let calendar = Calendar.current
                let dateFormatter = DateFormatter()
                
                dateFormatter.dateFormat = "yyyy.MM.dd"
                dateFormatter.locale = Locale.current
                
                let todayDate = dateFormatter.date(from: today)! // 오늘 날짜 Date 객체
                let privacyDate = dateFormatter.date(from: date)! // 개인정보 수집된 날짜 Date 객체
                
                let component = calendar.dateComponents([.month], from: privacyDate, to: todayDate) // month 비교
                let month = component.month! // Int 타입
                
                if month >= Int(term[1])! { // [오늘 날짜 - 개인정보 수집된 날짜] 와 [약관 유효기간] 비교
                    result.append(idx+1)
                }
            }
        }
    }
    
     return result
}

solution("2022.05.19", ["A 6", "B 12", "C 3"], ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"]) // [1, 3]
