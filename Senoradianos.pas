{Calcula sen(A, precisao) com A em radianos, Vladwoguer Bezerra 2016}
program Senoradianos;
uses crt;
var seno, rad : real;
    radVezes10 : integer;

function fatorial(N : integer): real;
var I, aux: integer;
begin
     aux := 1;
     for I := 1 to N do
     begin
           aux := aux * I;
     end;
     fatorial := aux;
end;

function sen(A : real; precisao : real) : real;
var seno, termo, potencia_de_a, sinal : real;
    cont : integer;
begin
     seno := 0;
     termo := A;
     sinal := -1;
     potencia_de_a := A;
     cont := 1;
     while(Abs(termo) > precisao) do
     begin
          sinal := sinal * (-1);
          seno := seno + sinal * termo;
          potencia_de_a := potencia_de_a * A * A;
          cont := cont + 2;
          termo := (potencia_de_a/fatorial(cont));
     end;
     sen := seno;
end;

begin
     writeln(' _________________');
     writeln('|', 'RAD':8,' ', 'Seno':8, '|');
     for radVezes10 := 1 to 16 do
     begin
          rad := radVezes10/10;
          seno := sen(rad, 0.0001);

          writeln('|', rad:7:5, ' | ' ,seno:7:5, '|');
     end;
     writeln('|_________________|');
     readkey;


end.

