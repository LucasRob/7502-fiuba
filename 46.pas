program cuarentayseis;
uses crt;
const min=1;
      max=12;
type
    tentero=integer;
    tvector=array [min..max] of tentero;
var
   vect:tvector;
   n:tentero;

function divisible (i,j:tentero):boolean;
begin
     if i mod j = 0
       then
           divisible:=true
       else
           divisible:=false;
end;


procedure cargar (var num,i,k:tentero);
begin
     num:=i;
     inc(i);
     inc(k);
end;

procedure ingreso(var vect:tvector;var n:tentero);
var
   i,j,cont,k:tentero;


begin
     i:=2;
     k:=1;
     repeat
           j:=1;
	   cont:=0;
	   repeat
	         if divisible(i,j) = true
		   then
                       begin
                            inc(cont);
                            inc(j);
                       end

		   else
		       inc(j);
	  until (cont > 2) or (j>i);

	  if cont = 2
	    then
                cargar(vect[k],i,k)
            else
                inc(i);

     until i > max;
     n:=k;
end;





procedure mostrar (var vect:tvector;n:tentero);
var i:tentero;

begin

for i:=1 to n-1 do
  writeln(vect[i]);

end;

begin
     clrscr;
     ingreso(vect,n);
     mostrar(vect,n);
     readkey;
end.



