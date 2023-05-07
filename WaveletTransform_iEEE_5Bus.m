clc;
clear all;
open('G20_final_5bus_System.slx');
sim('G20_final_5bus_System.slx');
currentA=Current1;
currentB=Current2;
currentC=Current3;
currentG=Current4;
[cA,LA]=wavedec(currentA,1,'db4');
[cB,LB]=wavedec(currentB,1,'db4');
[cC,LC]=wavedec(currentC,1,'db4');
[cG,LG]=wavedec(currentG,1,'db4');
coefA=detcoef(cA,LA,1);
coefB=detcoef(cB,LB,1);
coefC=detcoef(cC,LC,1);
coefG=detcoef(cG,LG,1);
m=max(coefA);
n=max(coefB);
p=max(coefC);
q=max(coefG);


