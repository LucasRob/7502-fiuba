program cuarentaytres;
uses crt;
type
    tvalor=char;
var
   letra:tvalor;

function mayuscula(letra:tvalor):boolean;

begin
     if (ord(letra)>=65) and (ord(letra)<=90)
       then
           mayuscula:=true
        else
	    mayuscula:=false;
end;

procedure obtener(var letra:tvalor);

begin
      clrscr;
      repeat
            writeln ('ingrese letra');
            readln (letra);
      until mayuscula(letra)=true;
end;



function cambio(letra:tvalor):tvalor;

begin
      ord(letra):=ord(letra)+32;
      cambio:=letra;
end;

begin
     obtener(letra);
     writeln(cambio(letra));
     readln;
end.
