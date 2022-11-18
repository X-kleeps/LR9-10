const n=8; m=8; h=8;
var i,j:integer;
mas:array[1..n,1..m] of integer;
mas1:array [1..h] of integer;
begin

  for i:=1 to n do
    for j:=1 to m do
      mas[i,j]:=random(0,7);
    for i:=1 to n do
    begin
      for j:=1 to m do
        write(mas[i,j]:4);
      writeln;
    end;
  for i:=1 to n do
    begin
    for j:=1 to m-1 do
      begin
      if (mas[i,j]+mas[i,j+1]=7) then begin mas1[i]:=1; break; end
      else mas1[i]:=-1;
      end;
    end;
   print (mas1);
end.