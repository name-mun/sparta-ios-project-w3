import Foundation

class BaseballGame {
    // 게임 기록을 저장할 배열 생성
    var gameHistory = [Int]()
    // 에러 확인 인스턴스 생성
    let inputError = InputError()
    
    func selectCategory() {
        print("\n환영합니다! 원하시는 번호를 입력해주세요\n 1. 게임 시작하기 2. 게임 기록 보기 3. 종료하기")
        
        let input = Int(readLine()!)
        
        switch input {
        case 1: gameStart()
        case 2: printGameHistory()
        case 3: gameOver()
        default:
            print("\n올바른 숫자를 입력해주세요!")
            selectCategory()
        }
    }
    
    func gameStart() {
        print("\n< 게임을 시작합니다 >")
        // 시도 횟수를 0으로 설정
        gameHistory.append(0)
        
        // 랜덤 숫자 인스턴스 생성
        let randomNumber = RandomNumber()
        
        // 입력값과 결과가 같을 때까지 반복
        while true {
            // 입력값을 받고 변수에 저장
            print("숫자를 입력하세요")
            let input = readLine()
            
            // 입력값이 올바른지 확인
            if inputError.checkInputErrorGame(input) == true {
                print("올바르지 않은 입력값입니다\n")
                continue
            }
            // 시도 횟수 추가
            gameHistory[gameHistory.count - 1] += 1
            
            // 입력값을 배열로 저장
            let inputArray = input!.map { Int(String($0))! }
            
            // 정답과 입력값을 비교하고, 성공하면 함수 종료
            if randomNumber.compareInput(inputArray) == .success {
                break
            }
        }
        
        selectCategory()
    }
    
    func printGameHistory() {
        print("\n< 게임 기록 보기 >")
        
        if gameHistory.count > 0 {
            for i in gameHistory.indices {
                print("\(i+1)번째 게임 : 시도 횟수 - \(gameHistory[i])")
            }
        } else {
            print("저장된 기록이 없습니다\n2")
        }

        selectCategory()
    }
    
    func gameOver() {
        print("\n< 숫자 야구 게임을 종료합니다 >")
        return
    }
 }

let baseballGame = BaseballGame()
baseballGame.selectCategory()
