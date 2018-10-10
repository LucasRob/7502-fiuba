program cuarentayochovdos;
uses crt;
const min=1;
      max=10;
type
    tentero=integer;
    tnotas=min..max;
    tvecnotas=array[tnotas] of tentero;
var
   vecnotas:tvecnotas;
   total:tentero;

function limite(parametro:string[20]):tentero;
var j:tentero;

begin
     j:=0;

     repeat
           inc(j);
     until parametro[j]='-';

     limite:=j+1;
end;



procedure coord(var vecnotas:tvecnotas;var total:tentero);
var i,n:tentero;
    nota,cod:longint;
    parametro:string[20];
begin
      total:=0;
      for i:=1 to paramcount do
        begin
             parametro:=paramstr(i);
             n:=limite(parametro);
             val((copy(parametro,n,2)),nota,cod);
             if cod = 0
	       then
	           begin
	                inc(total);
	                inc(vecnotas[nota]);
                   end;

        end;
end;

procedure promedio(var vecnotas:tvecnotas;total:tentero);
var i:tentero;

begin
     for i:=min to max do
        writeln('NOTA',' ',i,' ',(vecnotas[i]*100)/total:1:2);
     writeln(total);
end;

begin
     clrscr;
     coord(vecnotas,total);
     promedio(vecnotas,total);
     readkey;
end.
