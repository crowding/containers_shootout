function pushdown(N, crash)
    %a value of N more than about 100000 with crash=1
    %usually makes matlab crash hard.
    a = {};
    for i = 1:N
        a = {rand() a};
    end
    
    if ~exist('crash', 'var') || ~crash
        %we have to deconstruct in a controlled way.
        %matlab crashes hard here if you let it try to deallocate all in
        %one go.
        for i = 1:N
            a = a{2};
        end
    end
end