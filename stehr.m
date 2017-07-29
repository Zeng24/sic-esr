clear, clf

Sys1.S = 1/2;
Sys1.g = [2.0173, 2.0183, 2.0028];
Sys1.gFrame=[0 0 110.75];
Sys1.lw = 1;

Sys2.S = 1/2;
Sys2.gFrame=[0 0 20];
Sys2.g = [2.006 2.020];

Sys3.S = 1;
Sys3.g = [1.988, 1.9815, 1.9815];
Sys3.gFrame=[0 0 110.75];
Sys3.lw = 3; 

Sys4.S = 1/2;
Sys4.g = [1.9595 1.9605];  

Sys5.S = 1/2;
Sys5.g = [1.9605 1.9565]; 
Sys5.lw = 1;

Exp.mwFreq = 9.2;  % GHz
Exp.Range = [320 340]; % mT
Exp.Harmonic=0;

x=Exp.Range(1):(Exp.Range(2)-Exp.Range(1))/1023:Exp.Range(2);
plt1=pepper(Sys1, Exp); 
plt2=pepper(Sys2, Exp);
plt3=pepper(Sys3, Exp); 
plt4=pepper(Sys4, Exp); 
plt5=pepper(Sys5, Exp);
% col1=cumtrapz(x,plt1);
% col2=cumtrapz(x,plt3);
% col3=cumtrapz(x,plt5);
plot(x,plt1);
hold on;
plot(x,plt3);
hold on;
plot(x,plt5);



