
numSamples = 1000;
mu = 2;
sigma = 4;
sample1 = zeros(numSamples,1);
count = 0;
while count < numSamples
    x = randn(1);
    u = rand(1);
    if u <= exp(-(x-mu)^2/(2*sigma^2))/sqrt(2*pi*sigma^2)
        count = count + 1;
        sample1(count) = mu + sigma*x;
    end
end
mean(sample1)
var(sample1)
histogram(sample1)
%% 

numSamples = 1000;
mu = 2;
sigma = 4;
[x, y] = pol2cart(2*pi*rand(numSamples,1), sqrt(-2*log(rand(numSamples,1))));
sample2 = mu + sigma.*x;

mean(sample2)
var(sample2)
histogram(sample2)

%% 
numSamples = 1000;
mu = 2;
sigma = 4;
sample3 = zeros(numSamples,1);
for i = 1:numSamples
    x = randn(1000,1);
    sample3(i) = mean(mu + sigma*x);
end
mean(sample3)
var(sample3)
histogram(sample3)