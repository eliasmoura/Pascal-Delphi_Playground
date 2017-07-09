Program arrrays;
const
  lenth=5;
var
  my_array: array [1..5] of longint = (12,43,78,11,0);
  c:integer;
begin
  for c := 1 to length(my_array) do
    writeln(my_array[c]);
end.
