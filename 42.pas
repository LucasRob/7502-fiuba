program cuarentaydos;
uses crt;
type
    tnum=real;
var
   a,b,c,x1,x2:tnum;
function raices(a,b,c:tnum):boolean;

begin
     if ((sqr(b))-(4*a*c)) >=0
       then
           raices:=true
       else
           raices:=false;
end;

procedure obtener (var a,b,c:tnum);

begin
     writeln('ingrese a,b,c');
     readln(a,b,c);
end;

procedure raices2(a,b,c,x1,x2:tnum);


   begin
       if raices(a,b,c) = true
         then
           begin
                writeln ('Tiene raices reales');
                x1:=(-b+(sqrt((sqr(b))-(4*a*c))))/(2*a);
		x2:=(-b-(sqrt((sqr(b))-(4*a*c))))/(2*a);
		writeln (x1:1:2,' ',x2:1:2);
           end

         else
             writeln ('no tiene');

   end;


begin
     clrscr;
     obtener(a,b,c);
     raices2(a,b,c,x1,x2);
     readln;
end.
	
