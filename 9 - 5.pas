var
  i, n,g,h,z,u,m,m2: integer;
  mas1: array of integer;
  mas2: array of integer;

function otr(a,b: array of integer): integer;
var sum1,sum2,maxa,maxb,mina,minb:integer;
begin
  maxa:=a[1];
  maxb:=b[1];
  mina:=a[1];
  minb:=b[1];
  for var i := 0 to n-1 do
  begin
    if a[i] mod 5=0 then begin g:=i; break; end
  end;
  for var i := 0 to n-1 do
  begin
    if b[i] mod 5=0 then begin h:=i; break; end;
  end;
  for var i := 0 to n-1 do
    begin
    if maxa<a[i] then begin maxa:=a[i]; m:=i; end;
    if maxb<b[i] then begin maxb:=b[i]; m2:=i; end;
    if mina>a[i] then begin mina:=a[i]; z:=i+1; end;
    if minb>b[i] then begin minb:=b[i]; u:=i+1; end;
    end;

    for var i :=1 to n do
      begin
    if g<h then begin 
      a[m]:=0;
        while (u<n) do
          begin
         b[u]:=b[u]*2;
         inc(u);
         end;
    end
    else  begin 
      b[m2]:=0; 
        while (z<n) do
        begin
      a[z]:=a[z]*2;
      inc(z);
      end;
    end;
    end;
    writeln();
    println (a);
    println(b);
end;
begin
  writeln('Введите предел массива');
  readln(n);
  mas1:=new integer[n];
  for i := 0 to n-1 do
  begin
    mas1[i] := random(-20, 20);
    write(mas1[i], ' '); 
  end;
  writeln();
  
   mas2:=new integer[n];
  for i := 0 to n-1 do
  begin
    mas2[i] := random(-20, 20);
    write(mas2[i], ' ');
  end;
  otr(mas1,mas2);
end.