function num_of_success2 = Part_2(N,R,p)
%Part_2 Calculates sucess of decoding for N 100 times
%   Detailed explanation goes here
num_of_success2 = 0;
    for c = 1:1:1000
        % Part 1 Generate Random Message
        M = rand(1,N);
        M = round(M);
        M_encode = repelem(M,R);
        M_received = M_encode;
    
        for iterator_Og = 1:1:N*R
            random = rand();
            if random > 1-p
                M_received(iterator_Og)= ~M_encode(iterator_Og); 
            end
        end
    
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
    
        % test whether or not M_decoded = M
        if M_decoded == M
            num_of_success2 = num_of_success2 + 1;
        end
    end
    
    num_of_success2 = num_of_success2/c;
    figure
    trials = 0:1.0:1;
    success_matrix = [1-num_of_success2 num_of_success2];
    bar(trials,success_matrix);
    xlabel('N');
    ylabel('P(x)');
    title(['PMF for N = ', num2str(N), ', R = ', num2str(R), ', & p = ', num2str(p)])
   disp(['The percentage of successes is: ', num2str(num_of_success2*100), '%'])
end

