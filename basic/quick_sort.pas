program quick_sort;

const
  l = 5;
var
  i,tmp,j : integer;
  test : array [1..l] of integer = (321, 134, 49, 10, 52);
begin
  write('Array "test" has the data: ');
  for i := 1 to l do
    write(test[i], ' ');
  writeln;
  writeln('Ordering…');
  for i := 1 to l do
    for j := i+1 to l do
      if test[i] > test[j] then
      begin
        tmp := test[i];
        test[i] := test[j];
        test[j] := tmp;
      end;
  write('Array ordered: ');
  for i := 1 to l do
    write(test[i], ' ');
  writeln;
end.
