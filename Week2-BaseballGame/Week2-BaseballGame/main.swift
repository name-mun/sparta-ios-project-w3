import Foundation

class BaseballGame {
    // 랜덤 숫자 인스턴스 생성
    let randomNumber = RandomNumber()
    // 에러 확인 인스턴스 생성
    let inputError = InputError()
    
    func selectCategory() {
        print("환영합니다! 원하시는 번호를 입력해주세요\n 1. 게임 시작하기 2. 게임 기록 보기 3. 종료하기")
        
        let input = Int(readLine()!)
        
        switch input {
        case 1: gameStart()
        default: selectCategory()
        }
    }
    
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
            
            // 입력값을 배열로 저장
            let inputArray = input!.map { Int(String($0))! }
            
            // 정답과 입력값을 비교하고, 성공하면 함수 종료
            if randomNumber.compareInput(inputArray) == .success {
                break
            }
        }
        selectCategory()
    }
 }

let baseballGame = BaseballGame()
baseballGame.selectCategory()
