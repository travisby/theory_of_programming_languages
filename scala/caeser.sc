def encrypt (str : String, key : Int) : String = {
    var myMutableStr = str
    val myEncrypt =( x :Char ) => encrypt_one(x, key)
    return myMutableStr.map(myEncrypt)
}

def encrypt_one (myChar: Char, key : Int) : Char = {
    val lowerA = 'a' toInt
    val lowerZ = 'z' toInt
    val upperA = 'A' toInt
    val upperZ = 'Z' toInt
    val ordOfChar = myChar toInt

    if (ordOfChar >= lowerA && ordOfChar <= lowerZ) {
        return (lowerA + ((ordOfChar - lowerA + key) % 26)) toChar
    }
    else if (ordOfChar >= upperA && ordOfChar <= lowerZ) {
        return (upperA + ((ordOfChar - upperA + key) % 26)) toChar
    }
    return myChar

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

if (args(0) == "encrypt") {
    println(encrypt(args(0), args(1) toInt))
} else if (args(0) == "decrypt") {
    println(decrypt(args(0), args(1) toInt))
} else {
    println(solve(args(0)))
}
