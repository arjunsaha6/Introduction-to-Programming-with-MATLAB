function valid = valid_date(year,month,day)

y=0;

z = isscalar(year)

if z==0 || year<1 || year ~= fix(year)

    valid = false;

end

if ~isscalar(month) || month<1 || month ~= fix(month)

    valid = false;

end

if ~isscalar(day) || day<1 || day ~= fix(day)

    valid = false;

else

    valid = true;

end

c1 = mod(year,4);

c2 = mod(year,100);

c3 = mod(year,400);

if month>12

    valid = false;

end

if c3==0

    y=1;

elseif c2==0

    y=0;

elseif c1==0

    y=1;

else

    y=0;
end

if month<=7 && mod(month,2)>0

    if day>31

        valid = false;

    end

elseif month<=7 && mod(month,2)==0

    if month>2

        if day>30

            valid = false;

        end

    elseif month == 2

        if y==1

            if day>29

                valid=false;

            end

         else

            if day>28

                valid = false;

            end

        end

    end

elseif month>7 && mod(month,2)==0

    if day>31

        valid = false;

    end

elseif month>7 && mod(month,2)>0

    if day>30

        valid = false;

    end

else

    valid = true;

end
