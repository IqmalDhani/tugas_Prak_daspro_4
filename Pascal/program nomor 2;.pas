program PolaBintangAngka;
uses crt;

var
  i, j: integer;

begin
clrscr;
  for i := 1 to 5 do
  begin
    case i of
      1, 3, 5: 
        for j := 1 to i do
          write('* ');
      2: write('2 2');
      4: write('4 4 4 4');
    end;
    writeln;
  end;
  
end.