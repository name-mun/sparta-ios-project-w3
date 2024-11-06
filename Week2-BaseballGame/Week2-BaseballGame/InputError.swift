class InputError {
    // 입력값이 올바른지 확인하는 메서드
    func checkInputError(_ input: String?) -> Bool {
        // 입력값의 길이가 3이 아니거나, 다른 타입이 있는 경우
        guard input!.count == 3, let inputInt = Int(input!), Set(input!).count == 3 else {
            return true
        }
        // 0이 있는 경우
        if input!.contains("0") {
            return true
        }
        return false
    }
}
