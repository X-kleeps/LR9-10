const n=8; m=8; h=8;
var i,j,min,sum,b:integer; sr:real;
mas:array[1..n,1..m] of integer;
mas1:array [1..h] of integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      mas[i,j]:=random(-20,20);
    for i:=1 to n do
    begin
      for j:=1 to m do
        write(mas[i,j]:4);
      writeln;
    end;
  for i:=1 to n do
  begin
    min:=mas[i,1];
    for j:=1 to m do
      begin
      if (min>=mas[i,j]) then begin min:=mas[i,j]; mas1[i]:=min end;
      end;
    end;
   print (mas1);
   for i:=1 to h do
     sum:=sum+mas1[i];
   sr:=sum/h;
   sr:=round(sr);
   writeln;
   writeln (sr);
   for i:=1 to h do
     if (mas1[i]=sr) then b:=1
   else b:=0;
   if b>0 then writeln ('Содержит свое средне арифметическое')
   else writeln ('Несодержит свое средне арифметическое')
end.