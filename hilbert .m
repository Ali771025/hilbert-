
t=-10:0.01:10;
x=sinc (t);
subplot(2,2,1);plot(t,x);
title('input');
xlabel('time');
ylabel('Function Value');
y = x.*exp(1i*2*pi*50*t);
m = real(y);
subplot(2,2,2);plot(t,m);
title('mod');
ylabel('Function Value');
mh = hilbert (m);
mhp=mh+m;
base = mhp.*exp(-1*1i*2*pi*50*t);
subplot(2,2,3);plot(t,base);
title('demod');
ylabel('Function Value');
