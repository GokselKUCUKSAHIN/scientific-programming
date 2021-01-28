tic
myPrimes = zeros(1,100000);
found_primes = 1;
counter = 2;
while found_primes <= 100001
    if isPrime(counter) ~= -1
        myPrimes(found_primes) = counter;
        found_primes = found_primes + 1;
    end
    counter = counter + 1;
end
toc