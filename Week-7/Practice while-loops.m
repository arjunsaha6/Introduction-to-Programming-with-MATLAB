function k = next_prime(n)

n1 = n + 1;

while n1 > n

    if isprime(n1)

        k = n1;

        break;

    else

        n1 = n1 + 1;

    end

end
