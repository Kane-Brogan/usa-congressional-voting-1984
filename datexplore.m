load('housevotes84data.mat');
% separate classes and attributes
Class = housevotes84.Class;
summary(classes); % returns the total # of congressmen from each party
% create variables for each attribute
x1 = housevotes84.x1;
x2 = housevotes84.x2;
x3 = housevotes84.x3;
x4 = housevotes84.x4;
x5 = housevotes84.x5;
x6 = housevotes84.x6;
x7 = housevotes84.x7;
x8 = housevotes84.x8;
x9 = housevotes84.x9;
x10 = housevotes84.x10;
x11 = housevotes84.x11;
x12 = housevotes84.x12;
x13 = housevotes84.x13;
x14 = housevotes84.x14;
x15 = housevotes84.x15;
x16 = housevotes84.x16;
% calculate percentage of 'y' for each attribute per party
% democrats
dx1 = sum(Class=='democrat' & x1=='y')/267;
dx2 = sum(Class=='democrat' & x2=='y')/267;
dx3 = sum(Class=='democrat' & x3=='y')/267;
dx4 = sum(Class=='democrat' & x4=='y')/267;
dx5 = sum(Class=='democrat' & x5=='y')/267;
dx6 = sum(Class=='democrat' & x6=='y')/267;
dx7 = sum(Class=='democrat' & x7=='y')/267;
dx8 = sum(Class=='democrat' & x8=='y')/267;
dx9 = sum(Class=='democrat' & x9=='y')/267;
dx10 = sum(Class=='democrat' & x10=='y')/267;
dx11 = sum(Class=='democrat' & x11=='y')/267;
dx12 = sum(Class=='democrat' & x12=='y')/267;
dx13 = sum(Class=='democrat' & x13=='y')/267;
dx14 = sum(Class=='democrat' & x14=='y')/267;
dx15 = sum(Class=='democrat' & x15=='y')/267;
dx16 = sum(Class=='democrat' & x16=='y')/267;
% republicans
rx1 = sum(Class=='republican' & x1=='y')/168;
rx2 = sum(Class=='republican' & x2=='y')/168;
rx3 = sum(Class=='republican' & x3=='y')/168;
rx4 = sum(Class=='republican' & x4=='y')/168;
rx5 = sum(Class=='republican' & x5=='y')/168;
rx6 = sum(Class=='republican' & x6=='y')/168;
rx7 = sum(Class=='republican' & x7=='y')/168;
rx8 = sum(Class=='republican' & x8=='y')/168;
rx9 = sum(Class=='republican' & x9=='y')/168;
rx10 = sum(Class=='republican' & x10=='y')/168;
rx11 = sum(Class=='republican' & x11=='y')/168;
rx12 = sum(Class=='republican' & x12=='y')/168;
rx13 = sum(Class=='republican' & x13=='y')/168;
rx14 = sum(Class=='republican' & x14=='y')/168;
rx15 = sum(Class=='republican' & x15=='y')/168;
rx16 = sum(Class=='republican' & x16=='y')/168;
% create bar chart
yeaPdem = [dx1, dx2, dx3, dx4, dx5, dx6, dx7, dx8, dx9, dx10, dx11, dx12, dx13, dx14, dx15, dx16];
yeaPrep = [rx1, rx2, rx3, rx4, rx5, rx6, rx7, rx8, rx9, rx10, rx11, rx12, rx13, rx14, rx15, rx16];
yeaper = [yeaPdem(:,:); yeaPrep(:,:)];
yeaper = yeaper.';
yeabar = bar(yeaper);
% boxplot
attrbArr = table2array(attrb);
dxn = sum(Class=='democrat' & attrbArr=='n')/267;
dxy = sum(Class=='democrat' & attrbArr=='y')/267;
dxq = sum(Class=='democrat' & attrbArr=='?')/267;
rxn = sum(Class=='republican' & attrbArr=='n')/168;
rxy = sum(Class=='republican' & attrbArr=='y')/168;
rxq = sum(Class=='republican' & attrbArr=='?')/168;
d = [dxy.', rxy.', dxn.', rxn.', dxq.', rxq.'];
boxplot(d,'Colors','brbrbr','Labels',{'yea','', 'nea', '', '?', ''});