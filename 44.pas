program cuarentaycuatro;
uses crt;
type
    tnum=integer;
var
   num1,num2,min:tnum;

procedure obtener(var num1,num2:tnum);

begin
     clrscr;
     writeln ('Ingrese el primer numero');
     readln (num1);
     writeln ('Ingrese el segundo numero');
     readln (num2);
end;

procedure factoreo(var num,factor,i:tnum);
var salir:boolean;

begin
        salir:=false;
	while salir = false do
          begin
               if (num mod i) = 0
                  then
                     begin
                         factor:=i;
                         if (num div i) <> num
                           then
                               num:=num div i
                           else
			       inc(i);
                         salir:=true;
                     end
                  else
                      inc(i);

          end;
end;

procedure mcd(num1,num2:tnum;var min:tnum);

var i1,i2,factor1,factor2:tnum;

begin
     factor1:=1;
     factor2:=1;
     i1:=1;
     i2:=1;


     repeat
           if factor1 = factor2
             then
                 begin
                      min:=min*factor1;
                      factoreo(num1,factor1,i1);
                 end

             else
	         if factor1 > factor2
		   then
		       factoreo(num2,factor2,i2)
                   else
		       factoreo(num1,factor1,i1);
    until (i1 = num1) and (i2=num2);
end;

begin
     min:=1;
     obtener(num1,num2);
     mcd(num1,num2,min);
     writeln(min);
     readln;
end.



