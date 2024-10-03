let input = readLine()!.split{$0 == " "}.map{Int($0)!}
var inputArray = readLine()!.split{$0 == " "}.map{Int($0)!}.sorted(by: <)
var anw = ""
var visited = Array(repeating: false, count: input[0] + 1)

backTracking(0, "", 0)

print(anw)

func backTracking(_ cur: Int, _ str: String, _ cnt: Int) {
    if cnt == input[1] {
        anw += "\(str)\n"
        return
    }
    
    if cur > input[0] - 1 {return}
    
    for i in 0..<input[0] {
        backTracking(i, str + "\(inputArray[i]) ", cnt + 1)
    }
}
