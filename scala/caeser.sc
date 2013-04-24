def encrypt (str : String, key : Int) : String = {
    return str
}

def decrypt (str : String, key : Int) : String = {
    return encrypt(str, 26 - key)
}

def solve (str: String) : String = {
    val mySolve =( x :Int ) => decrypt(str, x)
    val numbers = List(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25)
    val ourStringsList = numbers.map(mySolve)
    return ourStringsList.foldRight("")((x: String, y: String) => x ++ y)
}
