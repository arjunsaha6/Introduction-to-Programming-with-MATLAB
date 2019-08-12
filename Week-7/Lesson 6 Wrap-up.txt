function [summa, index] = max_sum(v,n)

N = length(v);

if n > N

    summa = 0;

    index = -1;

    return

end

sum = 0;

summa = -inf;

index = -inf;

for i = 1:(N-n+1)

    for j = i:(i+n-1)

        sum = sum + v(j);

    end

    if sum > summa

        summa = sum;

        index = i;

        sum = 0;

    else

        sum = 0;

    end

end
