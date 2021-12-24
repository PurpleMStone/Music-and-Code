%%追光者的简谱
%%参考网址：http://blog.csdn.net/weaponsun/article/details/46695255
%%参考网址：http://blog.sina.com.cn/s/blog_891a4b2c0101f81i.html
%%曲谱网址：http://www.qupu123.com/jipu/p289603.html
%%以中央C为do
fs=32000;    %采样频率

%定义0音
zero=pause_(4,fs);     %四分之一拍的零音
zeroh=pause_(8,fs);    %八分之一拍的零音
zerohh=pause_(16,fs);  %十六分之一拍的零音
%%一阶音的1/4拍
do_1=key(60,4,fs);
re_1=key(62,4,fs);
mil_1=key(63,4,fs);
mi_1=key(64,4,fs);
fa_1=key(65,4,fs);
so_1=key(67,4,fs);
lal_1=key(68,4,fs);
la_1=key(69,4,fs);
ti_1=key(71,4,fs);
%%一阶音的1/8拍
do_h=key(60,8,fs);
re_h=key(62,8,fs);
mil_h=key(63,8,fs);
mi_h=key(64,8,fs);
fa_h=key(65,8,fs);
so_h=key(67,8,fs);
lal_h=key(68,8,fs);
la_h=key(69,8,fs);
ti_h=key(71,8,fs);
%%一阶音的1/16拍
do_q=key(60,16,fs);
re_q=key(62,16,fs);
mil_q=key(63,16,fs);
mi_q=key(64,16,fs);
fa_q=key(65,16,fs);
so_q=key(67,16,fs);
lal_q=key(68,16,fs);
la_q=key(69,16,fs);
ti_q=key(71,16,fs);
%%二阶音的1/4拍
do2_1=key(72,4,fs);
re2_1=key(74,4,fs);
mi2_1=key(76,4,fs);
fa2_1=key(77,4,fs);
so2_1=key(79,4,fs);
la2_1=key(81,4,fs);
ti2_1=key(83,4,fs);
%%二阶音的1/8拍
do2_h=key(72,8,fs);
re2_h=key(74,8,fs);
mi2_h=key(76,8,fs);
fa2_h=key(77,8,fs);
so2_h=key(79,8,fs);
la2_h=key(81,8,fs);
ti2_h=key(83,8,fs);
%%二阶音的1/16拍
do2_q=key(72,16,fs);
re2_q=key(74,16,fs);
mi2_q=key(76,16,fs);
fa2_q=key(77,16,fs);
so2_q=key(79,16,fs);
la2_q=key(81,16,fs);
ti2_q=key(83,16,fs);
%%低阶音的1/4拍
do0_1=key(48,4,fs);
re0_1=key(50,4,fs);
mi0_1=key(52,4,fs);
fa0_1=key(53,4,fs);
so0_1=key(55,4,fs);
la0_1=key(57,4,fs);
ti0_1=key(59,4,fs);
%%低阶音的1/8拍
do0_h=key(48,8,fs);
re0_h=key(50,8,fs);
mi0_h=key(52,8,fs);
fa0_h=key(53,8,fs);
so0_h=key(55,8,fs);
so0h_h=key(56,8,fs);
la0_h=key(57,8,fs);
ti0_h=key(59,8,fs);
%%低阶音的1/16拍
do0_q=key(48,16,fs);
re0_q=key(50,16,fs);
mi0_q=key(52,16,fs);
fa0_q=key(53,16,fs);
so0_q=key(55,16,fs);
so0h_q=key(56,16,fs);
la0_q=key(57,16,fs);
ti0_q=key(59,16,fs);

%%和弦部分
c_1=1/3*do_1+1/3*mi_1+1/3*so_1;%1/4拍的C和弦
c_h=1/3*do_h+1/3*mi_h+1/3*so_h;%1/8拍的C和弦
c_q=1/3*do_q+1/3*mi_q+1/3*so_q;%1/16拍的C和弦

g_1=1/3*so_1+1/3*ti_1+1/3*re_1;%1/4拍的G和弦
g_h=1/3*so_h+1/3*ti_h+1/3*re_h;%1/8拍的G和弦
g_q=1/3*so_q+1/3*ti_q+1/3*re_q;%1/16拍的G和弦

fmaj7_1=1/4*fa_1+1/4*la_1+1/4*do_1+1/4*mi_1;%1/4拍的Fmaj和弦
fmaj7_h=1/4*fa_h+1/4*la_h+1/4*do_h+1/4*mi_h;%1/8拍的Fmaj和弦
fmaj7_q=1/4*fa_q+1/4*la_q+1/4*do_q+1/4*mi_q;%1/16拍的Fmaj和弦

f_1=1/3*fa_1+1/3*la_1+1/3*do_1;%1/4拍的F和弦
f_h=1/3*fa_h+1/3*la_h+1/3*do_h;%1/8拍的F和弦
f_q=1/3*fa_q+1/3*la_q+1/3*do_q;%1/16拍的F和弦

fm_1=1/3*fa_1+1/3*lal_1+1/3*do_1;%1/4拍的Fmaj和弦
fm_h=1/3*fa_h+1/3*lal_h+1/3*do_h;%1/8拍的Fmaj和弦
fm_q=1/3*fa_q+1/3*lal_q+1/3*do_q;%1/16拍的Fmaj和弦

em7_1=1/4*mi_1+1/4*so_1+1/4*ti_1+1/4*re_1;%1/4拍的Em7和弦
em7_h=1/4*mi_h+1/4*so_h+1/4*ti_h+1/4*re_h;%1/8拍的Em7和弦
em7_q=1/4*mi_q+1/4*so_q+1/4*ti_q+1/4*re_q;%1/16拍的Em7和弦

am_1=1/3*la_1+1/3*do_1+1/3*mi_1;%1/4拍的Am和弦
am_h=1/3*la_h+1/3*do_h+1/3*mi_h;%1/4拍的Am和弦
am_q=1/3*la_q+1/3*do_q+1/3*mi_q;%1/4拍的Am和弦

beat1_1=[g_h g_h];
beat1_2=[c_1 c_h c_h fmaj7_h fmaj7_q fmaj7_q fmaj7_h fmaj7_h];
beat1_3=[g_1 g_h g_h em7_h em7_q em7_q em7_h em7_h];
beat1=[beat1_1 beat1_2 beat1_3];

beat2_1=[am_1 am_h am_q am_q fmaj7_1 fmaj7_q fmaj7_q fmaj7_q fmaj7_q];
beat2_2=[g_h g_h g_h g_h c_1 c_h c_h];
beat2_3=[c_1 c_h c_h fmaj7_h fmaj7_q fmaj7_q fmaj7_h fmaj7_h];
beat2_4=[g_1 g_h g_h em7_h em7_h em7_h em7_h];
beat2=[beat2_1 beat2_2 beat2_3 beat2_4];

beat3_1=[am_1 am_1 am_h am_q am_q];
beat3_2=[f_h f_q f_q f_h f_q f_q f_q f_h f_h f_q f_q];
beat3_3=[fm_h fm_q fm_q fm_h fm_h fm_h fm_q fm_h fm_h];
beat3_4=[g_1 g_1 g_1 g_1];
beat3_5=[am_1 am_1 fmaj7_h fmaj7_h fmaj7_h fmaj7_h];
beat3=[beat3_1 beat3_2 beat3_3 beat3_4 beat3_5];

beat4_1=[g_h g_q g_q g_q g_h g_q c_h c_h c_h c_h];
beat4_2=[am_h am_q am_q am_q am_h am_q fmaj7_h fmaj7_h fmaj7_h fmaj7_h];
beat4_3=[g_h g_q g_q g_q g_h g_q c_h c_h c_q c_q c_h];
beat4=[beat4_1 beat4_2 beat4_3];

beat5_1=[am_h am_q am_q am_q am_h am_q fmaj7_h fmaj7_h fmaj7_h fmaj7_h];
beat5_2=[g_h g_q g_q g_q g_h g_q c_h c_h c_q c_q c_h];
beat5_3=[am_h am_q am_q am_q am_h am_q fmaj7_h fmaj7_h fmaj7_h fmaj7_h];
beat5=[beat5_1 beat5_2 beat5_3];

beat6_1=[g_h g_q g_q g_q g_h g_q g_q g_h];
beat6_2=[am_1 am_1 am_h am_q am_q am_h am_h];
beat6=[beat6_1 beat6_2];

beat=[beat1 beat2 beat3 beat4 beat5 beat6];
%%追光者简谱部分%%
part1_1=[do_h re_h];
part1_2=[mi_1 do_h ti0_h la0_h ti0_q do_q do_h mi_h];
part1_3=[re_1 ti0_h la0_h so0_h la0_q ti0_q ti0_h re_h];
line1=[part1_1 part1_2 part1_3];
%%第二行
part2_1=[do_1 zeroh do_q ti0_q do_1 zerohh la0_q la0_q ti0_q];
part2_2=[do_h ti0_h la0_h so0_h so0_1 do_h re_h];
part2_3=[mi_1 do_h ti0_h la0_h ti0_q do_q do_h mi_h];
part2_4=[re_1 ti0_h la0_h so0h_h fa_h mi_h ti0_h];
line2=[part2_1 part2_2 part2_3 part2_4];
%%第三行
part3_1=[do_1 zero zeroh la0_q do_q];
part3_2=[fa_h mi_q do_q fa_h mi_q do_q do_q do_h zeroh la0_q do_q];
part3_3=[re_h re_q re_q re_h mi_h fa_h mi_q mi_h do_h];
part3_4=[re_1 zero zero zero];
part3_5=[zero zero zeroh so_h la_h ti_h];
line3=[part3_1 part3_2 part3_3 part3_4 part3_5];
%%第四行
part4_1=[re2_h do2_q mi_q mi_q so_h so_q zeroh la_h re_h do_h];
part4_2=[re_h do_q re_q re_q so_h mi_q zeroh so_h la_h ti_h];
part4_3=[re2_h do2_q mi_q mi_q so_h so_q zeroh la_h mil_q re_q do_h];
line4=[part4_1 part4_2 part4_3];
%%第五行
part5_1=[re_h do_q ti0_q ti0_q do_h do_q zeroh so_h la_h ti_h];
part5_2=[re2_h do2_q mi_q mi_q so_h so_q zeroh la_h mil_q re_q do_h];
part5_3=[re_h do_q re_q re_q so_h mi_q zeroh so_h la_h ti_h];
line5=[part5_1 part5_2 part5_3];
%%第六行
part6_1=[re2_h do2_q mi_q mi_q so_h so_q mi_q so_h];
part6_2=[so_1 zero fa_h mi_q re_q re_h do_h];
line6=[part6_1 part6_2];

Cscale=[line1 line2 line3 line4 line5 line6];

song=0.3*beat+0.7*Cscale;
%播放
soundsc(song,1.1*fs);
audiowrite('mysong.wav',song,fs);
%subplot(2,1,1);
%plot(song);
%axis([0,200,-0.4,0.4]);
%N=262144;n=0:N-1;
%y=fft(song,N);   %对信号进行快速Fourier变换
%mag=abs(y);   %求取Fourier变换的振幅
%f=n*fs/N;
%subplot(2,1,2);
%plot(f(1:N/2),mag(1:N/2)); %绘出Nyquist频率之前随频率变化的振幅
%axis([0,1000,0,7000]);
%xlabel('频率/Hz');
%ylabel('振幅');title('N=1024');grid on;
 
