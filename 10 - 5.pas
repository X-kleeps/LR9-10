const n=8; m=8; h=8;
var i,j,max,imax:integer; sr:real;
mas:array[1..n,1..m] of integer;
mas1:array [1..h] of integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      mas[i,j]:=random(-5,5);
    for i:=1 to n do
    begin
      for j:=1 to m do
        write(mas[i,j]:4);
      writeln;
    end;
  for i:=1 to n do
  begin
    max:=mas[i,1];
    for j:=1 to m do
      begin
      if (max<mas[i,j]) then begin max:=mas[i,j]; end;
      end;
      max := 0;
  end;
  for var i:=1 to 8 do
  begin
    for var j :=1 to 8 do
    begin
      if dmas[i,j] = mas[i] then
        a:=a+1;
    end;
    if a = 1 then
      mas[i]:=1
    else
      mas[i]:=-1;
    a:=0
  end;
  println(mas);
end.