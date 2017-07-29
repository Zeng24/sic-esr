clear, clf

Sys.S = 1/2;
Sys.g = 2.017;
Sys.lw = 1;

Exp.mwFreq = 9.2;  % GHz
Exp.Range = [320 330]; % mT

pepper(Sys,Exp);

% animate_levels;g

x=Exp.Range(1):(Exp.Range(2)-Exp.Range(1))/1023:Exp.Range(2);
plt1=pepper(Sys,Exp);
plot(x,cumtrapz(x,plt1));
