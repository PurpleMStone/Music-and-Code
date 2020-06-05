%pause_.m
function f3=pause_(n,fs)
t=0:1/fs:4/n;
tt=4/n:-1/fs:0;
f3=0*sin(2*pi*t).*exp(tt);
