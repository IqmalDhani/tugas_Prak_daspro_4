program jumlah_1_sampai_n;
uses crt;
var
  n, x, y, z: integer;

begin
clrscr;
clrscr;
  write('Masukkan nilai n: ');
  readln(n);
  
  for x := n downto 1 do
  begin
    z := 0;
    for y := 1 to x do
    begin
      z := z + y;
      write(y);
      if y < x then
        write(' + ')
      else
        write(' = ');
    end;
    writeln(z);
  end;

end.