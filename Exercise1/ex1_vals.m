N = 10;

n1 = 0:9; x1 = (n1==0);
n2 = 0:9; x2 = (ones(size(n2)));
n3 = 0:9; x3 = exp(1j*2*pi/10 * n3);
n4 = 0:9; x4 = cos(2*pi/10 * n4);

f = linspace(-0.5, 0.5-1/N, N);
X1 = fftshift(fft(x1, N));
X2 = fftshift(fft(x2, N));
X3 = fftshift(fft(x3, N));
X4 = fftshift(fft(x4, N));

N2 = 50;
f2 = linspace(-0.5, 0.5-1/N2, N2);
X1_2 = fftshift(fft(x1, N2));
X2_2 = fftshift(fft(x2, N2));
X3_2 = fftshift(fft(x3, N2));
X4_2 = fftshift(fft(x4, N2));

N3 = 100;
f3 = linspace(-0.5, 0.5-1/N3, N3);
X1_3 = fftshift(fft(x1, N3));
X2_3 = fftshift(fft(x2, N3));
X3_3 = fftshift(fft(x3, N3));
X4_3 = fftshift(fft(x4, N3));
