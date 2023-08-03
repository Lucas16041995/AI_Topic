//1.寫一個 Swift 函數，接收一個整數 n，並計算並返回 1 到 n 的所有整數的總和
// 定義一個名為 receive 的函式，它接收一個整數參數 endNumber
func receive(endNumber: Int) -> Int{
    var sum = 0
    
    // 使用迴圈從 1 開始迭代到 endNumber
    for i in 1 ... endNumber{
        sum += i
    }
    return sum
}
// 呼叫 receive 函式，並傳入 endNumber = 10 作為參數，印出結果
print(receive(endNumber: 10))


//2.寫一個 Swift 函數，接收一個字串作為參數，並返回這個字串的反轉版本。例如，輸入 "Hello"，應該返回 "olleH"。
// 定義一個名為 reverse 的函式，它接收一個可選的字串參數 literal
func reverse(literal: String?) -> String?{
    
    // 使用 guard 語句，檢查 literal 是否為 nil
    guard let inputString = literal else { return nil }
    
    // 建立一個空字串 reverseString 來存儲反轉後的字串
    var reverseString = ""
    
    // 將目前的字元 char 連接到 reverseString 字串的前面
    // 此動作將字串進行反轉，由於 Swift 字串是一種序列型的集合，
    // 所以可以使用此方法反轉字串
    for char in inputString{
        reverseString = String(char) + reverseString
    }
    return reverseString
}

reverse(literal: "print")


//3.寫一個 Swift 函數，接收一個整數 n，並判斷它是否為質數（只能被 1 和自己整除的數字）
// 定義一個名為 primeNumber 的函式，它接收一個整數參數 number
// 並返回一個布林值，表示該數字是否為質數（素數）
func primeNumber(number: Int) -> Bool {
    
    // 檢查 number 是否小於等於 1，如果是，則直接返回 false
    // 因為質數定義上要大於 1
    if number <= 1 {
        return false
    }

    // 使用 for-in 迴圈，從 2 開始迭代到 number - 1
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

// 呼叫 primeNumber 函式，並傳入 number = 7 作為參數，印出結果
print(primeNumber(number: 7))
  

//4.寫一個 Swift 函數，接收一個整數 n，並返回第 n 項的費波那契數列的值。費波那契數列的前兩項為 0 和 1，從第三項起，每一項都是前兩項的和。
// 定義一個名為 fibonacci 的函式，它接收一個整數參數 n
// 並返回第 n 個斐波那契數
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
    
    // 使用 for-in 迴圈，從 2 開始迭代到 n
    for _ in 2...n {
        // 計算下一個斐波那契數，即前兩個數字的和
        result = a + b
        
        // 更新 a 和 b 的值，為下一次計算做準備
        a = b
        b = result
    }
    return result
}
// 呼叫 fibonacci 函式，並傳入 n = 10 作為參數，印出結果
print(fibonacci(10))


//5.寫一個 Swift 函數，接收一個整數陣列作為參數，並返回該陣列中所有奇數數字的新陣列
// 定義一個名為 arrayNumber 的函式，它接收一個整數型別的陣列參數 numbers
// 並返回一個整數型別的陣列，該陣列包含 numbers 中的所有奇數
func arraryNumber(_ numbers: [Int]) -> [Int] {
    
    // 定義一個空的整數型別的陣列 oldNumber，用於存儲所有奇數
    var oldNumber: [Int] = []
    
    for number in numbers {
        if number % 2 == 1{
            // 如果是奇數，則將 number 加入到 oldNumber 陣列中
            oldNumber.append(number)
        }
    }
    return oldNumber
}

// 呼叫 arrayNumber 函式，並傳入陣列 [1, 3, 5, 7, 8] 作為參數，印出結果
print(arraryNumber([1,3,5,7,8]))
