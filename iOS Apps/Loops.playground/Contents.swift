//: Playground - noun: a place where people can play

import UIKit


for var i=5; i <= 50; i=i+5{
    
    println("This number is \(i)")
}



var arr = [1, 4, 6, 0]

println(arr)


for x in arr{
    
    println(x)
}

for (index, x) in enumerate(arr){
    
    println(index)
    arr[index] = x+1
}

println(arr)




var i=2

while i <= 20{
    
    println(i)
    i=i+2
}