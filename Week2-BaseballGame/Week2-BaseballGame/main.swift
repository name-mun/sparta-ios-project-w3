import Foundation


class RandomNumber {
    // 서로 다른 임의수 3개를 만드는 함수
    func makeRandomNumber() -> [Int] {
        // 랜덤 숫자를 저장할 Set 생성
        var randomNumber = Set<Int>()
        
        // 서로 다른 숫자가 3개를 생성할 때까지 반복
        while (randomNumber.count < 3) {
            randomNumber.insert(Int.random(in: 1 ... 9))
        }
        
        // 베열로 변환 후 반환
        return Array(randomNumber)
    }
}
