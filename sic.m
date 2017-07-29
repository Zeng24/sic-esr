clear, clf

Sys.S = 3/2;
Sys.g = 2.008;
%Sys.A = ??;
%Sys.Nucs = '29Si';
Sys.D = 34;
Sys.lwpp = [8 1];
Sys.DStrain=5;

Exp.Field = 370.78; % mT
Exp.mwRange=[10.2 10.6]; % GHz
Exp.nPoints=1024;
Exp.Harmonic=0;
Exp.Temperature=298;
Exp.CrystalOrientation = [0 0 0]*pi/180;

Opt.Transitions=[1 2; 3 4];




[x, spec, trans]=pepper(Sys, Exp, Opt);
adjust=[ones(1,length(x)/2)*2, ones(1,length(x)/2)];
plot(x,spec./adjust);
cheater=spec./adjust;