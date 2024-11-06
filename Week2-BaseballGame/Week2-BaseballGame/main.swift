import Foundation

class BaseballGame {
    // 랜덤 숫자 인스턴스 생성
    let randomNumber = RandomNumber()
    // 에러 확인 인스턴스 생성
    let inputError = InputError()
    
    func gameStart() {
        print("< 게임을 시작합니다 >")
        // 입력값과 결과가 같을 때까지 반복
        while true {
            // 입력값을 받고 변수에 저장
            print("숫자를 입력하세요")
            let input = readLine()
            
            // 입력값이 올바른지 확인
            if inputError.checkInputError(input) == true {
                print("올바르지 않은 입력값입니다\n")
                continue
            }

        }
    }
}

let baseballGame = BaseballGame()
baseballGame.gameStart()
