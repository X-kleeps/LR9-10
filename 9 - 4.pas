var
  i, n: integer;
  mas1: array of integer;
  mas2: array of integer;

function otr(a,b: array of integer): integer;
var sum1,sum2:integer;
begin
  for var i := 1 to n do
    begin
    if a[i]>0 then sum1:=a[i]+sum1;
    if b[i]>0 then sum2:=b[i]+sum2;
    end;
    writeln ();
    writeln(sum1,' ',sum2);
    for var i :=1 to n do
      begin
    if sum1<sum2 then begin a[i]:=a[i]*10; print(a[i]); end
    else  begin b[i]:=b[i]*10; print(b[i]); end;
    end;
end;
begin
  writeln('Введите предел массива');
  readln(n);
  mas1:=new integer[n+1];
  for i := 1 to n do
  begin
    mas1[i] := random(-20, 20);
    write(mas1[i], ' '); 
  end;
  writeln();
  
   mas2:=new integer[n+1];
  for i := 1 to n do
  begin
    mas2[i] := random(-20, 20);
    write(mas2[i], ' ');
  end;
  otr(mas1,mas2);
  writeln();
end.