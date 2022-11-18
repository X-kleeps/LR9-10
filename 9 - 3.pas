var
  i, n, g, h: integer;
  mas: array [1..999] of integer;

function otr(z: integer): integer;
var sr:=0;
begin
  for var i := 1 to n do
    if (mas[i]<0) then begin sr := mas[i]; g:=i end;
    writeln('Ответ= ',g,':',sr)
end;

begin
  writeln('Введите предел массива');
  readln(n);
  for i := 1 to n do
  begin
    mas[i] := random(-20, 20);
    write(mas[i], ' '); 
  end;
  writeln();
  otr(n);
end.