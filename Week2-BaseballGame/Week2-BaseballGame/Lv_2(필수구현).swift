// Lv 2 (11/06 까지)

/*
- 정답을 맞추기 위해 3자리수를 입력하고 힌트를 받습니다
    - 힌트는 야구용어인 **볼**과 **스트라이크**입니다.
    - 같은 자리에 같은 숫자가 있는 경우 **스트라이크**, 다른 자리에 숫자가 있는 경우 **볼**입니다
    - ex) 정답 : 456 인 경우
        - 435를 입력한 경우 → 1스트라이크 1볼
        - 357를 입력한 경우 → 1스트라이크
        - 678를 입력한 경우 → 1볼
        - 123를 입력한 경우 → Nothing
    - 만약 올바르지 않은 입력값에 대해서는 오류 문구를 보여주세요
- 3자리 숫자가 정답과 같은 경우 게임이 종료됩니다
- 실행 예시(정답 : 456)13123213
*/

import Foundation

func inputErrorCheck(_ input: String?) -> Bool {
    var numberCount = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    // 입력값이 3개가 아닌경우 예외처리
    if input!.count != 3 {
        return false
    }
    
    // 입력값이 숫자가 아니거나 0이 있는 경우 예외처리
    for i in input! {
        if Int(String(i)) == nil || Int(String(i)) == 0 {
            return false
        }
        numberCount[Int(String(i))!-1] += 1
    }
    
    // 입력값에 같은 수가 2번 있는 경우 예외처리
    for i in numberCount {
        if i > 1 {
            return false
        }
    }
    
    return true
}

func levelTwo() {
    // 랜덤값을 저장할 set 생성
    var randomNumberSet = Set<Int>()
    
    // 스트라이크와 볼을 저장할 변수 생성
    var strikeCount = 0
    var ballCount = 0
    
    // randomNumberSet의 크기가 3이 될 때까지 실행
    while (randomNumberSet.count < 3) {
        // randomNumberSet에 랜덤 숫자 추가
        randomNumberSet.insert(Int.random(in: 1 ... 9))
    }
    // randomNumberSet을 배열로 저장
    let randomNumberArray = randomNumberSet.map { $0 }

    print("< 게임을 시작합니다 >")
    
    
    // 정답을 맞출 때까지 실행
    while strikeCount != 3 {
        print("숫자를 입력하세요")
        
        var input = readLine()
        
        if inputErrorCheck(input) == false {
            print("올바르지 않은 입력값입니다\n")
            continue
        }
        

        
    }
}
