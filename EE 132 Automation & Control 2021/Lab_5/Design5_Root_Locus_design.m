
%% example of root locus design lecture - lead compensator, Page 3 of Chapter5 part 2
%% plant 1/[s(s+4)(s+6)]

clf;
% poly commands can be used to specify the roots
numOL = 1;
denOL = poly([0,-4,-6]);
sysOL=tf(numOL,denOL);
rlocus(sysOL);
%rltool provides a GUI --- The procedure will be demonstrated in class.
rltool(sysOL);
%select pole/zero/gain option, add requirements for damping ratio and natual frequency,
%add a zero and a pole close to each other and then drag the zero and the pole around to
%meet the requirements




%% example of root locus lecture - lag compensator, Page 7 of Chapter5 part 1
%% plant 1/[(s+1)(s+2)(s+10)]

clf;
% poly commands can be used to specify the roots
numOL = 1;
denOL = poly([-1,-2,-10]);
sysOL=tf(numOL,denOL);
rlocus(sysOL);
%rltool provides a GUI --- The procedure will be demonstrated in class.
rltool(sysOL);
%select pole/zero/gain option, add requirements for damping ratio and natual frequency,
%add a zero and a pole close to each other and then drag the zero and the pole around to
%meet the requirements
