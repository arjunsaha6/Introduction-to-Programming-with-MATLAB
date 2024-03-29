function [mmr, mmm] = minimax(A)

B = A.';

p = size(A);

mmr = colon(1,p(1));

mmr(1:p(1)) = max(B)-min(B);

mmm = max(A(:))-min(A(:));

end
