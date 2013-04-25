
program Ceaser(output);
Uses sysutils;
    var func : String;
    var ourStr : String;
    var key    : Integer;
    var encrypted : String;
    var decrypted : String;
    var solved : String;

    function encrypt(ourString: String; key: Integer) : String;
        var i : Integer;
        var lowerA : Integer;
        var lowerZ : Integer;
        var upperA : Integer;
        var upperZ : Integer;
        begin
            i := 1;
            encrypt := '';
            lowerA := 97;
            lowerZ := 122;
            upperA := 65;
            upperZ := 90;
            while i <= length(ourString) do
                begin
                    if (ord(ourString[i]) >= upperA) and (ord(ourString[i]) <= upperZ) then
                        encrypt := encrypt + (chr((upperA + ((ord(ourString[i]) - upperA + key) mod 26))))
                    else if (ord(ourString[i]) >= lowerA) and (ord(ourString[i]) <= lowerZ) then
                        encrypt := encrypt + (chr((lowerA + ((ord(ourString[i]) - lowerA + key) mod 26))))
                    else
                        encrypt := encrypt;
                    i := i + 1;
                end;

            Exit;
        end;
    function decrypt(ourString: String; key: Integer) : String;
        begin
            decrypt := encrypt(ourString, 26 - key);
            Exit;
        end;
    function solve(ourString: String) : String;
        var i : Integer;
        begin
            solve := '';
            while i <= 25 do
                begin
                    solve := solve + '\n' + decrypt(ourString, i);
                    i := i + 1;
                end;
            Exit;
        end;

    begin
        func := ParamStr(1);
        ourStr := ParamStr(2);
        if (func = 'encrypt') or (func = 'decrypt') then
            key := StrToInt(ParamStr(3))
        else
            ;
        if func = 'encrypt' then
            writeln(encrypt(ourStr, key))
        else if func = 'decrypt' then
            writeln(decrypt(ourStr, key))
        else
            writeln(solve(ourStr));

    end.
