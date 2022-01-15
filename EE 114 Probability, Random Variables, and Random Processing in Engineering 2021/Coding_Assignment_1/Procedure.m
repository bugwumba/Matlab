function num_of_success = Procedure()
%PROCEDURE General formula for data transmission Procedure
%   Detailed explanation goes here

    %R must be an odd integer
    %p is probability of success
    %N is the length of the bit sequence
    p = input('Select p: ');
    N = input('Select N: ');
    % Record number of sequences
    R = input('Select R: ');
    while rem(R,2) == 0
        R = input('Select an odd value for R: ');
    end
    
    M = rand(1,N)
    M = round(M)
    M_encode = repelem(M,R)
    M_received = M_encode;
    
    for iterator_Og = 1:1:N*R
        random = rand();
        if random > 1-p
            M_received(iterator_Og)= ~M_encode(iterator_Og); 
        end
    end
    M_received
    
    num_zeros = 0;
    parse = 0;
    pos = 1;
    M_decoded = rand(1, N);
    
    for iterator = 1:1:N*R
        value = M_received(iterator);
        if value == 0
            num_zeros = num_zeros+1;
        end
        parse = parse + 1;
        if parse == R
            if num_zeros > R/2
                M_decoded(pos)=0;
                num_zeros = 0;
                parse = 0;
                pos = pos+1;
            else
                M_decoded(pos)=1;
                num_zeros = 0;
                parse = 0;
                pos = pos+1;
            end
        end
    end
    
    M_decoded
    % test whether or not M_decoded = M
    num_of_success = 0;
    if M_decoded == M
        num_of_success = num_of_success + 1;
    end
    disp('The number of successes are:')
end

