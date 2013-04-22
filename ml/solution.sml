val lowerA = 97;
val lowerZ = 122;
val upperA = 65;
val upperZ = 90;

fun encrypt_one(character, key) = if (Char.ord character >= lowerA andalso Char.ord character <= lowerZ)
                                      then Char.chr (lowerA + ((Char.ord character) - lowerA + key) mod 26)
                                  else if (Char.ord character >= upperA andalso Char.ord character <= upperZ)
                                      then Char.chr (upperA + ((Char.ord character) - upperA + key) mod 26)
                                  else character;
fun encrypt(str, key) = CharVector.map(fn character => encrypt_one(character, key)) str;

fun decrypt(str, key) = encrypt(str, 26 - key);

fun solve(str) = map(fn key => decrypt(str, key)) [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26];
