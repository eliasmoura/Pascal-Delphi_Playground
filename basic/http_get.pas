uses fphttpclient;
{$mode delphi}
var
  s : ansistring;
  uri: array  of ansistring;
begin
  s := TFPCustomHTTPClient.SimpleGet('http://www.example.com');
  writeln(s);
end.
