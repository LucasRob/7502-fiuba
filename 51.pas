program cincuentayuno;
uses crt;
const
     min=1;
     max=9;
type
     tsubrango=min..max;
     tentero=integer;
     tmatriz=array[tsubrango,tsubrango]of tentero;
var
   a,b,c:tmatriz;
   m,n:tentero;

procedure maxlogico(var n,m:tentero);

begin
      writeln('ingrese los maximos logicos de las matrices');
      readln(m,n);
end;

procedure carga(var a,b:tmatriz; n,m:tentero);
var i,j:tentero;

begin
      for i:=min to n do
        for j:=min to m do
	  begin
	       writeln('ingrese posicion',' ',i,' ',j,' ','de las matrices');
	       readln(a[i,j],b[i,j]);
          end;
end;

procedure suma(var a,b,c:tmatriz;n,m:tentero);
var i,j:tentero;

begin
     for i:=min to n do
       for j:=min to m do
	      c[i,j]:=a[i,j]+b[i,j];
end;

procedure mostrar(var c:tmatriz; n,m:tentero);
var i,j:tentero;
begin
     for i:=min to n do
       for j:=min to m do
          writeln(c[i,j]);
end;

begin
     clrscr;
     maxlogico(n,m);
     carga(a,b,n,m);
     suma(a,b,c,n,m);
     mostrar(c,n,m);
     readkey;
end.
