% Computer the energy level diagram using EasySpin's level() function
N = 200;
maxB = 100;
extB = linspace(0,maxB,N); % mT
E = levels(Sys,0,0,extB)/1e3;

% Plot the energy level diagram
h = plot(extB,E,'k');
set(h,'LineWidth',2);
xlabel('magnetic field [mT]');
ylabel('energy [GHz]');

Params.Range = [0 maxB];
Params.CrystalOrientation = [0 0 0]; % crystal orientation in spectrometer
