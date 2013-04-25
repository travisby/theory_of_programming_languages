-module(ceaser).
-export([encrypt/2, decrypt/2, solve/1]).

encrypt(Str, Key) -> lists:map(fun(Char) -> encrypt_one(Char, Key) end, Str).
decrypt(Str, Key) -> encrypt(Str, 26 - Key).

% erlang is EVIL for not allowing any function in guards...
encrypt_one(Char, Key) when ($A =< Char) and (Char =< $z) ->
    ALPHABET_START = find_alphabet_start(Char),
    (((Char - ALPHABET_START) + Key) rem 26) + ALPHABET_START;
encrypt_one(Char, _) -> Char.

% erlang is EVIL for not allowing any function in guards...
% lists:member(Needle, Haystack) would look pretty
find_alphabet_start(Char) when ($a =< Char) and (Char =< $z) -> $a;
find_alphabet_start(Char) when ($A =< Char) and (Char =< $Z) -> $A.

solve(Str) -> lists:map(fun(Key) -> decrypt(Str, Key) end, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]).
