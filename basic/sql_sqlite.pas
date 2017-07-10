program BasicDBase;
{$mode delphi} {$ifdef mswindows}{$apptype console}{$endif}
uses
  sqldb, sqlite3conn, Dialogs;
var
    Connect : TSQLite3Connection;
    Trans : TSQLTransaction;
begin
  ShowMessage('Hi!!!!!!!!');
    Connect := TSQLite3Connection.Create(nil);
    Trans := TSQLTransaction.Create(Connect);
    Connect.Transaction := Trans;
    Connect.DatabaseName := 'test_dbase';
    Trans.StartTransaction;  // opens Connect, EInOutError if SQLite not installed
    Connect.ExecuteDirect('create table TBLNAMES (ID integer Primary Key, NAME varchar(40));');
    Trans.Commit;
    Trans.Free;
    Connect.Free;
end.
