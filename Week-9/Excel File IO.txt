function distance = get_distance(c1,c2)

num = xlsread('Distances.xlsx');

[~, text] = xlsread('Distances.xlsx');

n = size(text);

distance = -1;

for i = 2:n

    if strcmp(c1,text{1,i})

        for j = 2:n

            if strcmp(c2,text{j,1})

                distance = num(i-1,j-1);

                break;

            end

        end

        if distance ~= -1

            return

        end

    end

end
