program Ceaser(output);
    var ourStr : String;
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
        begin
            solve := ourString;
            Exit;
        end;

    begin
        ourStr := 'HAL';
        encrypted := encrypt(ourStr, 1);
        decrypted := decrypt(encrypted, 1);
        solved := solve(encrypted);
        writeln(ourStr);
        writeln(encrypted);
        writeln(decrypted);
        writeln(solved);
    end.
