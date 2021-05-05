clear; 

%Field Parameters
N=300; % number of cells (to start simulation)
boundary=[-35,5,-5,5]; % field size
boundaryc=[-25,5,-5,5]; % intial cell domain size
Time=8000;

%Allocate cells
NCN=[105:10:295,106:10:296,104:10:184,107:10:187]; % NC cells 
Ax=[1:10:131,10:10:140,2:10:102,9:10:109,3:10:73,8:10:78,4:10:54,7:10:57,5:10:45,6:10:46];%External cells

%Determine repulsion parameters
alphaPSM= 10; 
alphaNC= 4;
alphaEX= 0.6;
alphaPN= 60; 
alphaPE= 35;
alphaNE= 15;

%Simulation code
[T,Y,recorder]=allocate(N,Ax,boundary,boundaryc,NCN,Time,alphaPSM,alphaNC,alphaEX,alphaPN,alphaPE,alphaNE);
Data=cell(1,2);
Data{1,1}=T;
Data{1,2}=Y;

%Make movie
moviename='moviename';
makemovie2(Data,N,NCN,boundary,moviename,Ax);



