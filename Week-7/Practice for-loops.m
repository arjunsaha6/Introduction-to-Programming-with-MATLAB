function summa = halfsum(A)

p = size(A);

summa = 0;
 
for r = 1:p(1)

    for c = 1:p(2)

        if c >= r

            summa = summa + A(r,c);

        end

    end

end
