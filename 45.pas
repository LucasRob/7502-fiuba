program cuarentaycinco;
uses crt;
type
    tvalor=integer;

var x,y:tvalor;

procedure obtener(var x,y:tvalor);
begin
     clrscr;
     writeln ('ingrese valores');
     readln(x,y);
end;

procedure intercambio(var x,y:tvalor);
var
   aux:tvalor;

begin
     aux:=x;
     x:=y;
     y:=aux;
end;

begin
     obtener(x,y);
     intercambio(x,y);
     writeln(x,y);
     readln;
end.
