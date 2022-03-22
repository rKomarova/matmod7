model Lab7
parameter Real N = 756;
parameter Real n0 = 17;
Real n(start=n0);

function k
  input Real t;
  output Real result;
algorithm
//result := 0.73;
  result := 0.000013;
end k;

function p
  input Real t;
  output Real result;
algorithm
//result := 0.000013;
  result := 0.73;
end p;

equation
der(n) = (k(time) + p(time) * n)*(N-n);

end Lab7;
