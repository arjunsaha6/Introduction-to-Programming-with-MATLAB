function output = blur(img,w)

inImg = double(img);

[m,n] = size(img);

output = inImg;

k = 2*w+1;

a = 0;

for i = 1:m

    for j = 1:n

        m1 = i-w;

        if m1<1

            m1 = 1;

        end

        m2 = i+w;

        if m2>m

            m2 = m;

        end

        n1 = j-w;

        if n1<1

            n1 = 1;

        end

        n2 = j+w;

        if n2>n

            n2 = n;

        end

        x = (m2-m1+1)*(n2-n1+1);

        for ii = m1:m2

            for jj = n1:n2

                a = a + inImg(ii,jj);

            end

        end

        for ii = m1:m2

            for jj = n1:n2

                if ii == i && jj == j

                    output(ii,jj) = round(a/x);

                elseif ii < i

                    break;

                elseif ii > i
 
                    output(ii,jj) = round(a/x);

                end

            end

        end

        a = 0;

    end

end

output = uint8(output)
