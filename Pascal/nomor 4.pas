program bilanagan_prima_satu_hingga_duapuluh;
uses crt;

var
  x, y: integer;
  prima: boolean;

begin
  clrscr;
  write('Masukkan angka 1 sampai 20: ');
  readln(x);
  
  if (x < 1) or (x > 20) then
  begin
    writeln('Angka harus berada dalam rentang 1 hingga 20!');
    exit;
  end;
  
  prima := true;
  
  if x <= 1 then
    prima := false
  else
    for y := 2 to x - 1 do
      if x mod y = 0 then
      begin
        prima := false;
        break;
      end;
  
  if prima then
    writeln(x, ' adalah bilangan prima.')
  else
    writeln(x, ' bukan bilangan prima.');
  
  readln;
end.