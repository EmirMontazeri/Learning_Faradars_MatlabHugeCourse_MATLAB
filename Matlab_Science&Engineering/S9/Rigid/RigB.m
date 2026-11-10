function Dx = RigB(t,x)

    a = 0.4;

    Dx = [x(2)*3*x(3)
          -x(3)*x(1)
          a*x(2)*x(1)];

end