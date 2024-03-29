function matrix = sparse2matrix(cellvec)

n = size(cellvec);

matrix = ones(cellvec{1,1}(1,1),cellvec{1,1}(1,2))*cellvec{1,2};

for i=3:n(2)

    matrix(cellvec{1,i}(1,1),cellvec{1,i}(1,2)) = cellvec{1,i}(1,3);

end
