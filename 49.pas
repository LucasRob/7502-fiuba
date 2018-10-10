program cuarentaynueve;
uses crt;
const
     min=1;
     max=5;
type
     tentero=integer;
     trango=min..max;
     tvector=array [trango] of tentero;

var
    vector1,vector2:tvector;
    m:tentero;

procedure ingreso(var vector1:tvector);
var i:tentero;

begin
     for i:=min to max do
       begin
            writeln ('ingrese numero');
	    readln(vector1[i]);
       end;
end;

procedure verificar (var num:tentero;var vector2:tvector;var m:tentero);
var j:tentero;
    encontrado:boolean;
begin
     encontrado:=false;
     for j:=1 to m do
            if num = vector2[j] then
	      encontrado:=true;
     if (encontrado=false)
       then
           begin
	        vector2[m+1]:=num;
		inc(m);
	   end;
end;



procedure llenar(var vector1,vector2:tvector;var m:tentero);
var i:tentero;

begin
     for i:=1 to max do
       verificar(vector1[i],vector2,m);
end;

procedure mostrar (var vector2:tvector;m:tentero);
var i:tentero;

begin
     for i:=1 to m do
       writeln(vector2[i]);
end;

begin
     m:=0;
     ingreso(vector1);
     llenar(vector1,vector2,m);
     mostrar(vector2,m);
     readkey;
end.
