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
    
    b = cellfun( @(c) [c(:) ; NaN(longest-numel(c),1)], matrix,'un',0);
    d = nan(length(b{1}),length(b));

    display(b)
    display('pause')
    try 
        display(b{1})
    catch
        display('tried b{1}; failed')
    end
        
    try 
        display(b{1}{1})
    catch
        display('tried b{1}{1}; failed')
    end
        
    try 
        display(b{2}{1})
    catch
        display('tried b{2}{1}; failed')
    end    
    
    try 
        display(b(1))
    catch
        display('tried b(1); failed')
    end
    
        
  
    for j = 1:size(d,1)
        for k = 1:size(d,2)
            d(j,k) = b{j}{1};
        end
    end

    matrix = d;
end