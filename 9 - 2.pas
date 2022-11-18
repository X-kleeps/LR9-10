var
  g,u,n,min,i: integer;
  mas: array [1..999] of integer;
  procedure min1(x:integer);
    var min:=abs(mas[1]);
        otr:=mas[1];
    begin
      for var i :=1 to x do begin
      if (abs(mas[i])<abs(min)) then begin min:=mas[i]; g:=i; end;
      if(mas[i]<0) and (mas[i]<otr) then begin otr:=mas[i]; u:=i; end;
       end;
       writeln ('Min= ',g,':',min);
       writeln ('Макс отрицательный= ',u,':',otr);
    end;
begin
  writeln('Введите предел массива');
  readln(n);
  for i := 1 to n do
  begin
    mas[i] := random(-10,10);
    write(mas[i], ' ');
  end;
    writeln();
    min1(n);
end.