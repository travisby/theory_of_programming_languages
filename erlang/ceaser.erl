-module(ceaser).
-export([encrypt/2, decrypt/2]).

encrypt(Str, Key) -> lists:map(fun(X) -> X end, Str).
decrypt(Str, Key) -> encrypt(Str, -Key).

encrypt_one(Char, Key) -> Char.
