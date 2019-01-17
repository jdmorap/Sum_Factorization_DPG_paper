
close all

% PRIMAL MAXWELL
p= [1,1,2,3,4,5]';
dp=[1,2,2,2,2,2]';

pp=p+dp;
pp1=pp+1;
% Only Gram matrix - average of 20 times
maxwellconv=[
    3.089969158172607E-002
    4.224989414215088E-002
    0.129939246177673
    0.571191704273224
    2.30369299650192
    7.82212979793549
];
maxwellten0=[
    3.411315679550171E-002
    3.982499837875366E-002
    5.386240482330322E-002
    9.418309926986694E-002
    0.203260397911072
    0.464003396034241
];
maxwellten1=[
    3.167935609817505E-002
    3.324569463729858E-002
    3.674374818801880E-002
    5.011754035949707E-002
    7.880405187606812E-002
    0.131518745422363
];
ref_conv=5E-8*(pp+1).^9;
ref_ten0=2E-7*(pp+1).^7;
ref_ten1=4E-7*(pp+1).^6;
figure(3)
loglog(pp1,maxwellconv,'-ok','DisplayName','Conventional')
hold on
loglog(pp1,maxwellten0,'-ob','DisplayName','Tensorization')
loglog(pp1,maxwellten1,'-or','DisplayName','Simpl. Tensorization')

loglog(pp1,ref_conv,'--.k','DisplayName','Ref. line ~ ( p_{r} + 1 )^9')
loglog(pp1,ref_ten0,'--.b','DisplayName','Ref. line ~ ( p_{r} + 1 )^7')
loglog(pp1,ref_ten1,'--.r','DisplayName','Ref. line ~ ( p_{r} + 1 )^6')
legend3 = legend('show');
set(legend3,'Location','northwest');
title('Matrix G computing time - Primal Maxwell ( H(curl) )')
xlabel('p_r+1')
ylabel('Average elapsed time (s)')
grid on
% Gram + Volume Stiffness + Volume Load - average of 20 times
maxwellconv_vol=[
    3.132009506225586E-002
    4.653060436248779E-002
    0.167438840866089
    0.888882505893707
    4.01985909938812
    15.3600646972656
];
maxwellten0_vol=[
    2.664095163345337E-002
    3.367154598236084E-002
    7.753909826278686E-002
    0.340255844593048
    1.56990829706192
    6.02122205495834    
];
maxwellten1_vol=[
    3.178219795227051E-002
    3.374385833740234E-002
    4.396824836730957E-002
    0.381904304027557
    0.208368206024170
    7.31325960159302
];
figure(4)
loglog(p(2:6),maxwellconv_vol(2:6),'-ok','DisplayName','Conventional')
hold on
loglog(p(2:6),maxwellten0_vol(2:6),'-ob','DisplayName','Tensorization')
% loglog(p(2:6),maxwellten1_vol(2:6),'-or','DisplayName','Simpl. Tensorization')
% ref_conv=9E-8*(pp+1).^9;
% ref_ten0=5E-6*(pp+1).^7;
% ref_ten1=6E-5*(pp+1).^6;
% loglog(pp1(2:6),ref_conv(2:6),'--.k','DisplayName','Ref. line ~ ( p_{r} + 1 )^9')
% loglog(pp1(2:6),ref_ten0(2:6),'--.b','DisplayName','Ref. line ~ ( p_{r} + 1 )^7')
% loglog(pp1(2:6),ref_ten1(2:6),'--.r','DisplayName','Ref. line ~ ( p_{r} + 1 )^6')
legend4 = legend('show');
set(legend4,'Location','northwest');
title('Matrices G, B, l computing time - Primal Maxwell ( H(curl) )')
xlabel('p_0')
ylabel('Average elapsed time (s)')
grid on
% PRIMAL POISSON
p= [1,1,2,3,4,5,6]';
dp=[1,2,2,2,2,2,2]';
pp=p+dp;
pp1=pp+1;
% Only Gram matrix - average of 50 times
poissonconv=[
    1.758518218994141E-003
    3.135561943054199E-003
    1.198853969573975E-002
    4.311855792999267E-002
    0.162604899406433
    0.522372741699219
    1.04360559940338
];
poissonten0=[
    1.636538505554199E-003
    1.950297355651856E-003
    3.310780525207520E-003
    6.703162193298339E-003
    1.491464138031006E-002
    3.045448303222656E-002
    0.298101401329041
];
poissonten1=[
    1.668100357055664E-003
    1.886882781982422E-003
    2.851896286010742E-003
    4.959459304809570E-003
    9.453439712524414E-003
    1.795147895812988E-002
    4.949423789978027E-002
];
ref_conv=0.32E-8*(pp+1).^9;
ref_ten0=1.3E-8*(pp+1).^7;
ref_ten1=0.54E-7*(pp+1).^6;
figure(1)
loglog(pp1(1:6),poissonconv(1:6),'-ok','DisplayName','Conventional')
hold on
loglog(pp1(1:6),poissonten0(1:6),'-ob','DisplayName','Tensorization')
loglog(pp1(1:6),poissonten1(1:6),'-or','DisplayName','Simpl. Tensorization')

loglog(pp1(1:6),ref_conv(1:6),'--.k','DisplayName','Ref. line ~ ( p_{r} + 1 )^9')
loglog(pp1(1:6),ref_ten0(1:6),'--.b','DisplayName','Ref. line ~ ( p_{r} + 1 )^7')
loglog(pp1(1:6),ref_ten1(1:6),'--.r','DisplayName','Ref. line ~ ( p_{r} + 1 )^6')
legend1 = legend('show');
set(legend1,'Location','northwest');
title('Matrix G computing time - Primal Poisson ( H^{1} )')
xlabel('p_r + 1')
ylabel('Average elapsed time (s)')
grid on
% Gram + Volume Stiffness + Volume Load - average of 50 times
poissonconv_vol=[
    1.845660209655762E-003
    3.554921150207520E-003
    1.600260257720947E-002
    6.616967678070068E-002
    0.294061617851257
    1.01491288185120
    2.07474758148193
];
poissonten0_vol=[
    1.762104034423828E-003
    2.408280372619629E-003
    7.203679084777832E-003
    2.808733940124512E-002
    0.113359556198120
    0.404460477828979
    0.894454298019409
];
poissonten1_vol=[
    1.767740249633789E-003
    2.412738800048828E-003
    7.212600708007813E-003
    2.781226158142090E-002
    0.111887841224670
    0.398806319236755
    0.654906482696533
];
figure(2)
loglog(p(2:6),poissonconv_vol(2:6),'-ok','DisplayName','Conventional')
hold on
loglog(p(2:6),poissonten0_vol(2:6),'-ob','DisplayName','Tensorization')
% loglog(p(2:6),poissonten1_vol(2:6),'-or','DisplayName','Simpl. Tensorization')
legend2 = legend('show');
set(legend2,'Location','northwest');
% ref_conv=0.5E-8*(pp+1).^9;
% ref_ten0=1E-7*(pp+1).^7;
% ref_ten1=1.5E-7*(pp+1).^6;
% loglog(p(2:6),ref_conv(2:6),'--.k','DisplayName','Ref. line ~ ( p_{r} + 1 )^9')
% loglog(p(2:6),ref_ten0(2:6),'--.b','DisplayName','Ref. line ~ ( p_{r} + 1 )^7')
% loglog(p(2:6),ref_ten1(2:6),'--.r','DisplayName','Ref. line ~ ( p_{r} + 1 )^6')

title('Matrices G, B, l computing time - Primal Poisson ( H^{1} )')
xlabel('p_0')
ylabel('Average elapsed time (s)')
grid on

p= [1,1,2,3,4,5,6]';
dp=[1,2,2,2,2,2,2]';
p1=p+1;
uwacous_conv=[
    1.481151580810547E-003
    1.053540706634521E-002
    7.464754581451416E-002
    0.433680653572083
    1.90039925575256
    6.98455679416656
    21.8769317030907
];

uwacous_tens=[
    7.151961326599121E-004
    3.402900695800781E-003
    9.623003005981446E-003
    2.836220264434814E-002
    8.078035116195678E-002
    0.213569104671478
    0.4956253528594970    
];

 ref_conv=6E-8*(pp+1).^9;
 ref_ten0=0.9E-7*(pp+1).^7;
% ref_ten1=1.5E-7*(pp+1).^6;

figure(5)
loglog(pp1(2:7),uwacous_conv(2:7),'-ok','DisplayName','Conventional')
hold on
loglog(pp1(2:7),uwacous_tens(2:7),'-ob','DisplayName','Tensorization')
% loglog(pp1(1:6),poissonten1(1:6),'-or','DisplayName','Simpl. Tensorization')

 loglog(pp1(2:7),ref_conv(2:7),'--.k','DisplayName','Ref. line ~ ( p_{r} + 1 )^9')
 loglog(pp1(2:7),ref_ten0(2:7),'--.b','DisplayName','Ref. line ~ ( p_{r} + 1 )^7')
% loglog(pp1(1:6),ref_ten1(1:6),'--.r','DisplayName','Ref. line ~ ( p_{r} + 1 )^6')
legend1 = legend('show');
set(legend1,'Location','northwest');
title('Matrices G, B, l computing time-Ultraweak Acoustics (H^1\times H(div))')
xlabel('p_r + 1')
ylabel('Average elapsed time (s)')
grid on