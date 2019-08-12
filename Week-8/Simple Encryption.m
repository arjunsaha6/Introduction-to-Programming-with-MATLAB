function coded = caesar(v,n1)

n1 = mod(n1,95);

n = length(v);

coded1 = char(double(v)+n1);

for i = 1:n

    if coded1(i)>126

        coded1(i) = coded1(i)-95;

    elseif coded1(i)<1

        coded1(i) = coded1(i)+95;

    end

end

coded = char(coded1);
