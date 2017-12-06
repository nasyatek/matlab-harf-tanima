clc
clear all;

A=getMatris('a.txt');
K=getMatris('k.txt');
L=getMatris('l.txt');
O=getMatris('o.txt');
V=getMatris('v.txt');
delete test.txt


MTEST=getMatrisTest('test.txt','test/testl.png');
MA=calMX(A);
MK=calMX(K);
ML=calMX(L);
MO=calMX(O);
MV=calMX(V);
size(MTEST);
size(MA);
zxa=mahaDistance2(MTEST,MA);
zxk=mahaDistance2(MTEST,MK);
zxl=mahaDistance2(MTEST,MK);
zxo=mahaDistance2(MTEST,MO);
zxv=mahaDistance2(MTEST,MV);
%zxam=fitcnb(MTEST,A,'normal')
%zxkm=fitcnb(MTEST,MK)
%zxlm=fitcnb(MTEST,MK)
%zxom=fitcnb(MTEST,MO)
%zxvm=fitcnb(MTEST,MV)
estimates=[zxa zxk zxl zxo zxv];
xes=min(estimates);
if sum(MTEST)<1000
    if xes==zxa
        disp('Test karakteri A olarak algılandı!');
    elseif xes==zxk
        disp('Test karakteri K olarak algılandı!')
    elseif xes==zxl
        disp('Test karakteri L olarak algılandı!')
    elseif xes==zxo
        disp('Test karakteri O olarak algılandı!')
    elseif xes==zxv
        disp('Test karakteri V olarak algılandı!')
    else
        disp('Test karakteri bir sınıfa dahil edilemedi!')
    end
else
    disp('Karakter okunamayacak kadar küçük')
end

function[C] = getMatris(matrisfile)
C=dlmread(matrisfile);
end

function[C] = getMatrisTest(matrisfile,ximage)
 C=xfi(matrisfile,ximage)
end

function[XVec] = calMX(MX)
XVec=mean(MX); % Kolonların ortalamasını alır.
end

function[mahalanobisdistance]=mahaDistance2(X,Y)
S = cov(X);
mu = mean(X,1);
d = (Y-mu)*inv(S)*(Y-mu)';
mahalanobisdistance=d;
end