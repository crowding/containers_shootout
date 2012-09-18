function pushdown(N, crash)
    %a value of N of 1000000 with crash=1
    %usually makes matlab crash hard.
    %
    %Observe:
    %pushdown(1000000, 0)
    %pushdown(1000000, 1)
    
    a = {};
    for i = 1:N
        a = {rand() a};
    end
    
    if ~exist('crash', 'var') || ~crash
        %we have to deconstruct in a controlled way.
        %matlab crashes hard here if you let it try to let it decide how to
        %free memory.
        for i = 1:N
            a = a{2};
        end
    end
end