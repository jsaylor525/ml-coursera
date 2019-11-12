# Non-vectorized example

# vectorized is faster for this
n = 1e6;
# but non vectorization is faster for this
# n = 10

theta = rand(n+1,1);
x = rand(n+1, 1);

start_time = time()
prediction = 0.0;
for j = 1:n+1,
    prediction = prediction+ theta(j) * x(j);
end;
stop_time = time()
disp('The run time for non-vectorized code: '), disp(stop_time-start_time)
disp('The result was: '), disp(prediction)

prediction = 0;
start_time = time();
prediction = theta.' * x;
stop_time = time();
disp('The run time for vectorized code: '), disp(stop_time-start_time)
disp('The result was: '), disp(prediction)
