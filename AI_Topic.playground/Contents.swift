//1.寫一個 Swift 函數，接收一個整數 n，並計算並返回 1 到 n 的所有整數的總和
func receive(endNumber: Int) -> Int{
    var sum = 0
    for i in 1 ... endNumber{
        sum += i
    }
    return sum
}

print(receive(endNumber: 10))


//2.寫一個 Swift 函數，接收一個字串作為參數，並返回這個字串的反轉版本。例如，輸入 "Hello"，應該返回 "olleH"。
func reverse(literal: String?) -> String?{
    guard let inputString = literal else { return nil }
    
    var reverseString = ""
    for char in inputString{
        reverseString = String(char) + reverseString
    }
    return reverseString
}

reverse(literal: "print")

//3.寫一個 Swift 函數，接收一個整數 n，並判斷它是否為質數（只能被 1 和自己整除的數字）
func primeNumber(number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

print(primeNumber(number: 7))
  

//4.寫一個 Swift 函數，接收一個整數 n，並返回第 n 項的費波那契數列的值。費波那契數列的前兩項為 0 和 1，從第三項起，每一項都是前兩項的和。
func fibonacci(_ n: Int) -> Int {
    if n <= 0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    var a = 0
    var b = 1
    var result = 0
    
    for _ in 2...n {
        result = a + b
        a = b
        b = result
    }
    return result
}

print(fibonacci(10))

//5.寫一個 Swift 函數，接收一個整數陣列作為參數，並返回該陣列中所有奇數數字的新陣列
func arraryNumber(_ numbers: [Int]) -> [Int] {
    var oldNumber: [Int] = []
    
    for number in numbers {
        if number % 2 == 1{
            oldNumber.append(number)
        }
    }
    return oldNumber
}

print(arraryNumber([1,3,5,7,8]))
