%key2.m
function f7=key2(p,fs)
t=0:1/fs:127/fs;
f7=(0.4*sin(2*pi*freq(p)*t));
end
