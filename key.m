%key.m
function f4=key(p,n,fs)
t=0:1/fs:4/n;
%tt=4/n:-1/fs:0;
%f4=(0.4*sin(2*pi*freq(p)*t)).*exp(tt);
target = [0.99999;0.5;0]; 
gain = [0.005;0.0004;0.00075]; 
duration = [4*fs/(32*n)+1;4*fs*23/(32*n);4*fs/(4*n)]; 
adsr = adsr_gen(target,gain,duration); 
f4=(0.4*sin(2*pi*freq(p)*t)).*adsr;
end

