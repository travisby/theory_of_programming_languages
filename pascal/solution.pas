program Ceaser(output);
    var ourStr : String;
    var encrypted : String;
    var decrypted : String;
    var solved : String;

    function encrypt(ourString: String; key: Integer) : String;
        begin
            encrypt := ourString;
            Exit;
        end;
    function decrypt(ourString: String; key: Integer) : String;
        begin
            decrypt := ourString;
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
