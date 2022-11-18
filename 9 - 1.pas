var
  i, n, g, h: integer;
  mas: array [1..999] of integer;

function raz(z: integer): integer;
var sr:=1;
begin
  for var i := 1 to n do
    if (mas[i] mod 2 = 0) then sr := mas[i] * sr;
  writeln('Ответ= ',sr);
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
  raz(n);
end.
