# Plotting Data Lecture

close all

# Generate sin plot
t = [0:0.01:0.98];
y1 = sin(2 * pi * 4 * t);
plot(t, y1)
# pause(1)

# Override sin plot with cos
y2 = cos(2* pi * 4 * t);
plot(t, y2)
# pause(1)

# Add sin to cos plot
hold on
plot(t, y1)
# pause(1)

# Label plot
xlabel('time');
ylabel('value');
title('cos & sin of 2*pi*4*t');
legend('cos', 'sin');
# pause(1)

# Save plot to file
print -dpng 'myPlot.png'

hold off

# Create plots in seperate windows
figure(1); plot(t,y1);
figure(2); plot(t,y2);
# pause(1)


# Create a subplot
figure(3);
subplot(1,2,1)
plot(t,y1);
# pause(1)

subplot(1,2,2);
plot(t,y2);
# pause(1)

# Adjust the window scale
axis([0.5 1 -1 1])
# pause(1)

close all

# Visualize a matrix
A = magic(5);
figure(1)
imagesc(A)
imagesc(A), colorbar, colormap gray;

imagesc(magic(15)), colormap gray, colorbar

# Coma chaining prints output
a=1,b=2,c=3
a=1;b=2;c=3;