function charnum = char_counter(fname,character)

fid = fopen(fname,'rt');

if fid<0

    charnum = -1;

    return

end

line = fgets(fid);

n = length(line);

c = -1;

while ischar(line)

    for i =1:n

        if (character == line(i))

            c = c+1;

        end

    end

    line = fgets(fid);

    n = length(line);

end

if c ~= -1

    charnum = c+1;

elseif ischar(character)

    charnum = 0;
else

    charnum = -1;

end
