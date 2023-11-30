run("ex1_vals.m");

%% Plotting the signals
figure(1);
sgtitle("Discrete signals $x_1$ to $x_4$", Interpreter="latex");

subplot(2, 2, 1, "replace");
stem(n1, x1, DisplayName="$x_1[n]$");
title("$x_1[n] = \delta[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$x_1[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 2, "replace");
stem(n2, x2, DisplayName="$x_2[n]$");
title("$x_2[n] = 1$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$x_2[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 3, "replace"); hold on;
title("$x_3[n] = e^{j\frac{2\pi}{10}n}$", Interpreter="latex");
stem(n3, real(x3), DisplayName="$\Re(x_3[n])$");
stem(n3, imag(x3), DisplayName="$\Im(x_3[n])$");
xlabel("$n$", Interpreter="latex"); ylabel("$x_3[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 4, "replace");
stem(n4, x4, DisplayName="$x_4[n]$");
title("$x_4[n] = \cos\left(\frac{2\pi}{10}n\right)$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$x_4[n]$", Interpreter="latex");
legend("show", Interpreter="latex");


%% Plotting the FFTs
% N = 10
figure(2);
sgtitle("DFTs via FFT of $x_1$ to $x_4$ ($N=10$)", Interpreter="latex");

subplot(2, 2, 1, "replace"); hold on;
stem(f, X1, DisplayName="$\hat{x}_1[n]$");
title("DFT of $x_1[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_1[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 2, "replace"); hold on;
stem(f, X2, DisplayName="$\hat{x}_2[n]$");
title("DFT of $x_2[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_2[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 3, "replace"); hold on;
title("DFT of $x_3[n]$", Interpreter="latex");
stem(f, real(X3), DisplayName="$\Re(\hat{x}_3[n])$");
stem(f, imag(X3), DisplayName="$\Im(\hat{x}_3[n])$");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_3[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 4, "replace"); hold on;
stem(f, real(X4), DisplayName="$\Re(\hat{x}_4[n])$");
stem(f, imag(X4), DisplayName="$\Im(\hat{x}_4[n])$");
title("DFT of $x_4[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_4[n]$", Interpreter="latex");
legend("show", Interpreter="latex", Location="southwest");


% N = 50
figure(3);
sgtitle("DFTs via FFT of $x_1$ to $x_4$ ($N=50$)", Interpreter="latex");

subplot(2, 2, 1, "replace"); hold on;
plot(f2, X1_2, DisplayName="$\hat{x}_1[n]$");
title("DFT of $x_1[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_1[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 2, "replace"); hold on;
plot(f2, real(X2_2), DisplayName="$\Re(\hat{x}_2[n])$");
plot(f2, imag(X2_2), DisplayName="$\Im(\hat{x}_2[n])$");
line([-0.5 0.5], [0 0], Color="#222", HandleVisibility="off");
title("DFT of $x_2[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_2[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 3, "replace"); hold on;
title("DFT of $x_3[n]$", Interpreter="latex");
plot(f2, real(X3_2), DisplayName="$\Re(\hat{x}_3[n])$");
plot(f2, imag(X3_2), DisplayName="$\Im(\hat{x}_3[n])$");
line([-0.5 0.5], [0 0], Color="#222", HandleVisibility="off");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_3[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 4, "replace"); hold on;
plot(f2, real(X4_2), DisplayName="$\Re(\hat{x}_4[n])$");
plot(f2, imag(X4_2), DisplayName="$\Im(\hat{x}_4[n])$");
line([-0.5 0.5], [0 0], Color="#222", HandleVisibility="off");
title("DFT of $x_4[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_4[n]$", Interpreter="latex");
legend("show", Interpreter="latex", Location="southwest");


% N = 100
figure(4);
sgtitle("DFTs via FFT of $x_1$ to $x_4$ ($N=100$)", Interpreter="latex");

subplot(2, 2, 1, "replace"); hold on;
plot(f3, X1_3, DisplayName="$\hat{x}_1[n]$");   
title("DFT of $x_1[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_1[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 2, "replace"); hold on;
plot(f3, real(X2_3), DisplayName="$\Re(\hat{x}_2[n])$");
plot(f3, imag(X2_3), DisplayName="$\Im(\hat{x}_2[n])$");
line([-0.5 0.5], [0 0], Color="#222", HandleVisibility="off");
title("DFT of $x_2[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_2[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 3, "replace"); hold on;
title("DFT of $x_3[n]$", Interpreter="latex");
plot(f3, real(X3_3), DisplayName="$\Re(\hat{x}_3[n])$");
plot(f3, imag(X3_3), DisplayName="$\Im(\hat{x}_3[n])$");
line([-0.5 0.5], [0 0], Color="#222", HandleVisibility="off");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_3[n]$", Interpreter="latex");
legend("show", Interpreter="latex");

subplot(2, 2, 4, "replace"); hold on;
plot(f3, real(X4_3), DisplayName="$\Re(\hat{x}_4[n])$");
plot(f3, imag(X4_3), DisplayName="$\Im(\hat{x}_4[n])$");
line([-0.5 0.5], [0 0], Color="#222", HandleVisibility="off");
title("DFT of $x_4[n]$", Interpreter="latex");
xlabel("$n$", Interpreter="latex"); ylabel("$\hat{x}_4[n]$", Interpreter="latex");
legend("show", Interpreter="latex", Location="southwest");


%% Conclusions
% When the number of samples was low, the DFTs were not very accurate. When increasing this
% number, we can see that the sections where the low-sample DFT was constantly zero were
% actually oscillating. This data is lost when we use a low number of samples.
