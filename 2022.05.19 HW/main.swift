//1. Составить замыкание, которое считает кол-во букв в нашем предложении, которое мы вводим в консоли.

print("Введите текст:")
var text = readLine()

var symbol: (String) -> Int
symbol = {$0.count}
var result1 = symbol(text!)
print("Количество символов в тексте \(result1)")



//2. Составить замыкание, которое переводит наши деньги в курс доллара.

print("Введите число:")
var som = Double(readLine()!)
var dollar: (Double) -> Double
dollar = {$0/79.5}
var result2 = dollar(som!)
print("Ваши деньги в долларах \(result2) $")


//3. Составить программу с помощью функции sorted(), которая cортирует список имен по кол-ву букв по возрастанию.

var array: [String] = ["Arsen", "Kalybek", "Bermet", "Nuraiym"]

var names = array.sorted{$0 < $1}
print(names)

//Доп. задание: написать функцию аналогичную map() вручную используя цикл.

var arrayOfNumbers: [Int] = [10, 20, 30, 40, 50, 60]


func numbers(num: Int, array: [Int]) -> [Int]{
    var finalArray:[Int] = []
    for number in arrayOfNumbers{
        finalArray.append(number + num)
    }
    return finalArray
}
var final = numbers(num: 5, array: arrayOfNumbers)
print(final)
