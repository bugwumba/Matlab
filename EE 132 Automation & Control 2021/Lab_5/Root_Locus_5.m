
%% example of root locus lecture - Page 4 of Chapter5 part 1
%% open loop transfer function K(s+3)(s+4)/[(s+1)(s+2)]
%% We only need to provide rlocus or rtool with the open-loop transfer function, matlab will show the root locus of the closed-loop poles.

clf;
% poly commands can be used to specify the roots
numOL = poly([-3,-4]);
denOL = poly([-1,-2]);
sysOL=tf(numOL,denOL);
rlocus(sysOL);
%rltool provides a GUI
rltool(sysOL);





%% example of root locus lecture - Page 6 of Chapter5 part 1
%% open loop transfer function K(s+3)/[s(s+1)(s+2)(s+4)]

clf;
% poly commands can be used to specify the roots
numOL = poly([-3]);
denOL = poly([0,-1,-2,-4]);
sysOL=tf(numOL,denOL);
rlocus(sysOL);
%rltool provides a GUI
rltool(sysOL);