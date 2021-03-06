function [matrix] = convertCellArraytoMat(array)
    % Convert array to mat

    matrix = array;
    s = length(array);

    longest = 0;
    for j = 1:s
        m = size(matrix{j});
        if m(1) > longest
            longest = m(1);
        end
    end

    cellmax = longest;
    a = matrix{1};
    a = a';
    
    disp(('this is b:')
    b = cellfun( @(c) [c(:) ; NaN(longest-numel(c),1)], matrix,'un',0);
    disp('this is d: (NaN initialization)')
    d = nan(length(b{1}),length(b))

    for k = 1:length(b)
       d(:,k) = {b{k}};
    % a = vertcat(a, b{k}');
    %     size(a)
    end
    size(d)
    %  a(isnan(a))=0;

    matrix = d;
end