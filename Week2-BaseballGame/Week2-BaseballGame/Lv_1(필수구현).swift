// Lv 1 (11/04 까지)
// 1에서 9까지의 서로 다른 임의의 수 3개를 정하고 맞추는 게임입니다
// 정답은 랜덤으로 만듭니다.(1에서 9까지의 서로 다른 임의의 수 3자리)

import Foundation

func levelOne() {
    // 정답을 저장한 set 생성
    var correctAnswer = Set<Int>()
    
    // correctAnswer의 크기가 3보다 작을 때까지 실행
    while (correctAnswer.count < 3) {
        // correctAnswer에 랜덤 숫자 추가
        correctAnswer.insert(Int.random(in: 1 ... 9))
    }
}
