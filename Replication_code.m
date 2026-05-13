%% Replication Code for "Energy Intensity, Offshoring, and the Illusion of Decarbonization. Amadei, C., Dosi, C., & Pintus, F. J. (2026) - Nature Communications

clear;
clc;
addpath('functions/')
addpath('Database/')

%% Figure 1 - Evolution of the carbon intensity of GDP and of its drivers: World, China, United States, and EU-28

% loading data
[fig1data,fig1text]=xlsread('Figure1.xlsx','Graph_Input');

fig1dates = fig1data(1:end,1);
figure('Name','Figure 1 - Evolution of carbon intensity of gross domestic product (GDP) at the global level');
plot(fig1dates(2:end,1),fig1data(2:end,2),'LineWidth',2,'Color',[101/255 62/255 155/255]);
hold on
wld_ce=plot(fig1dates(2:end,1),fig1data(2:end,3),'LineWidth',2,'Color',[227/255 215/255 255/255]);
hold on
wld_mk1=plot(fig1dates(2:end,1),fig1data(2:end,3),'d','LineWidth',2,'Color',[227/255 215/255 255/255]);
hold on
wld_ci=plot(fig1dates(2:end,1),fig1data(2:end,4),'LineWidth',2,'Color',[204/255 166/255 172/255]);
hold on
wld_mk2=plot(fig1dates(2:end,1),fig1data(2:end,4),'x','LineWidth',2,'Color',[204/255 166/255 172/255]);
xlim([1971 2020]);
%title('\textbf{Global decarbonization drivers}','FontSize',15,'Interpreter','latex');
legend('Energy intensity','Carbon intensity of energy','','Carbon intensity of GDP','','FontSize',14,'Orientation','Vertical','Interpreter','latex')
set(legend,'EdgeColor',[0.92, 0.96, 1]);

%% Figure 2: Index Decomposition Analysis of the energy intensity (1996 - 2019: reference year 1995) for 15 OECD countries

% loading data
[data,text]=xlsread('Bargraph','All');
% line plots
dates = data(1:end,1);
figure('Name','Figure 2: Index Decomposition Analysis of the energy intensity (1996 - 2019: reference year 1995) for 15 OECD countries');
subplot(5,3,1);
b=bar(dates(1:end,1),data(1:end,32:35),'stacked');
b(1).FaceColor = "#7E2F8E"
b(2).FaceColor = "#0072BD"
b(3).FaceColor = "#D95319"
b(4).FaceColor = "#EDB120"
hold on
b1=plot(dates(1:end,1),data(1:end,36));
hold on
b2=scatter(dates(1:end,1),data(1:end,36),".");
title('Belgium','FontName',"Times",'FontSize',15);
subplot(5,3,2);
c=bar(dates(1:end,1),data(1:end,37:40),'stacked');
c(1).FaceColor = "#7E2F8E"
c(2).FaceColor = "#0072BD"
c(3).FaceColor = "#D95319"
c(4).FaceColor = "#EDB120"
hold on
c1=plot(dates(1:end,1),data(1:end,41));
hold on
c2=scatter(dates(1:end,1),data(1:end,41),".");
title('Canada','FontName',"Times",'FontSize',15);
subplot(5,3,3);
d=bar(dates(1:end,1),data(1:end,72:75),'stacked');
d(1).FaceColor = "#7E2F8E"
d(2).FaceColor = "#0072BD"
d(3).FaceColor = "#D95319"
d(4).FaceColor = "#EDB120"
hold on
d1=plot(dates(1:end,1),data(1:end,76));
hold on
d2=scatter(dates(1:end,1),data(1:end,76),".");
title('Denmark','FontName',"Times",'FontSize',15);
subplot(5,3,4);
f=bar(dates(1:end,1),data(1:end,42:45),'stacked');
f(1).FaceColor = "#7E2F8E"
f(2).FaceColor = "#0072BD"
f(3).FaceColor = "#D95319"
f(4).FaceColor = "#EDB120"
hold on
f1=plot(dates(1:end,1),data(1:end,46));
hold on
f2=scatter(dates(1:end,1),data(1:end,46),".");
title('Finland','FontName',"Times",'FontSize',15);
subplot(5,3,5);
i=bar(dates(1:end,1),data(1:end,47:50),'stacked');
i(1).FaceColor = "#7E2F8E"
i(2).FaceColor = "#0072BD"
i(3).FaceColor = "#D95319"
i(4).FaceColor = "#EDB120"
hold on
i1=plot(dates(1:end,1),data(1:end,51));
hold on
i2=scatter(dates(1:end,1),data(1:end,51),".");
title('France','FontName',"Times",'FontSize',15);
subplot(5,3,6);
h=bar(dates(1:end,1),data(1:end,2:5),'stacked');
h(1).FaceColor = "#7E2F8E"
h(2).FaceColor = "#0072BD"
h(3).FaceColor = "#D95319"
h(4).FaceColor = "#EDB120"
hold on
h1=plot(dates(1:end,1),data(1:end,6));
hold on
h2=scatter(dates(1:end,1),data(1:end,6),".");
title('Germany','FontName',"Times",'FontSize',15);
subplot(5,3,7);
g=bar(dates(1:end,1),data(1:end,12:15),'stacked');
g(1).FaceColor = "#7E2F8E"
g(2).FaceColor = "#0072BD"
g(3).FaceColor = "#D95319"
g(4).FaceColor = "#EDB120"
hold on
g1=plot(dates(1:end,1),data(1:end,16));
hold on
g2=scatter(dates(1:end,1),data(1:end,16),".");
title('Italy','FontName',"Times",'FontSize',15);
subplot(5,3,8);
j=bar(dates(1:end,1),data(1:end,57:60),'stacked');
j(1).FaceColor = "#7E2F8E"
j(2).FaceColor = "#0072BD"
j(3).FaceColor = "#D95319"
j(4).FaceColor = "#EDB120"
hold on
j1=plot(dates(1:end,1),data(1:end,61));
hold on
j2=scatter(dates(1:end,1),data(1:end,61),".");
title('Japan','FontName',"Times",'FontSize',15);
subplot(5,3,9);
n=bar(dates(1:end,1),data(1:end,62:65),'stacked');
n(1).FaceColor = "#7E2F8E"
n(2).FaceColor = "#0072BD"
n(3).FaceColor = "#D95319"
n(4).FaceColor = "#EDB120"
hold on
n1=plot(dates(1:end,1),data(1:end,66));
hold on
n2=scatter(dates(1:end,1),data(1:end,66),".");
title('Netherlands','FontName',"Times",'FontSize',15);
subplot(5,3,10);
u=bar(dates(1:end,1),data(1:end,22:25),'stacked');
u(1).FaceColor = "#7E2F8E"
u(2).FaceColor = "#0072BD"
u(3).FaceColor = "#D95319"
u(4).FaceColor = "#EDB120"
hold on
u1=plot(dates(1:end,1),data(1:end,26));
hold on
u2=scatter(dates(1:end,1),data(1:end,26),".");
title('New Zealand','FontName',"Times",'FontSize',15);
subplot(5,3,11);
o=bar(dates(1:end,1),data(1:end,52:55),'stacked');
o(1).FaceColor = "#7E2F8E"
o(2).FaceColor = "#0072BD"
o(3).FaceColor = "#D95319"
o(4).FaceColor = "#EDB120"
hold on
o1=plot(dates(1:end,1),data(1:end,56));
hold on
o2=scatter(dates(1:end,1),data(1:end,56),".");
title('Norway','FontName',"Times",'FontSize',15);
subplot(5,3,12);
e=bar(dates(1:end,1),data(1:end,27:30),'stacked');
e(1).FaceColor = "#7E2F8E"
e(2).FaceColor = "#0072BD"
e(3).FaceColor = "#D95319"
e(4).FaceColor = "#EDB120"
hold on
e1=plot(dates(1:end,1),data(1:end,31));
hold on
e2=scatter(dates(1:end,1),data(1:end,31),".");
title('Spain','FontName',"Times",'FontSize',15);
subplot(5,3,13);
s=bar(dates(1:end,1),data(1:end,67:70),'stacked');
s(1).FaceColor = "#7E2F8E"
s(2).FaceColor = "#0072BD"
s(3).FaceColor = "#D95319"
s(4).FaceColor = "#EDB120"
hold on
s1=plot(dates(1:end,1),data(1:end,71));
hold on
s2=scatter(dates(1:end,1),data(1:end,71),".");
title('Sweden','FontName',"Times",'FontSize',15);
subplot(5,3,14);
k=bar(dates(1:end,1),data(1:end,17:20),'stacked');
k(1).FaceColor = "#7E2F8E"
k(2).FaceColor = "#0072BD"
k(3).FaceColor = "#D95319"
k(4).FaceColor = "#EDB120"
hold on
k1=plot(dates(1:end,1),data(1:end,21));
hold on
k2=scatter(dates(1:end,1),data(1:end,21),".");
title('United Kingdom','FontName',"Times",'FontSize',15);
subplot(5,3,15);
t=bar(dates(1:end,1),data(1:end,7:10),'stacked');
t(1).FaceColor = "#7E2F8E"
t(2).FaceColor = "#0072BD"
t(3).FaceColor = "#D95319"
t(4).FaceColor = "#EDB120"
hold on
t1=plot(dates(1:end,1),data(1:end,11));
hold on
t2=scatter(dates(1:end,1),data(1:end,11),".");
title('United States','FontName',"Times",'FontSize',15);
legend({'Sectoral effect','Offshoring factor','Demand change','Demand to Output','Energy Intensity'},'Orientation','horizontal','EdgeColor',[1 1 1], 'FontName',"Times",'FontSize',10)


%% Figure 3: Dynamic effects of demand-invariant structural changes on energy intensity

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;

%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

PP=[50 16 84];
PP1=[50 2.5 97.5];

ent=prctile(fsave1,PP);
ent_95=prctile(fsave1,PP1);

figure('Name','Figure 3: Dynamic effects of demand-invariant structural changes on energy intensity','NumberTitle','off');
HH=0:HORZ-1;
jj=1;
for j=1:N
    subplot(3,2,jj)
    [H1,H2]=plotx2(HH,ent(:,:,j)')
    hold on;
    [H3,H4]=plotx2_95(HH,ent_95(:,:,j)')
title(['\textbf{' varnames{j} '}'],'FontSize',25,'FontWeight','bold','Interpreter','latex');
  if j==N || j==N-1 
         xlabel('years','interpreter','latex','FontSize',12);
  end
          if j==1 || j==2 || j==5 || j==6 
         ylabel('\%','interpreter','latex','FontSize',14);
          end
          if j==3 || j==4
          ylabel('\% points','interpreter','latex','FontSize',14);
          end
           if j==1
          ylim([-6 3])
          end
          if j==2
          ylim([-6 10])
          end
          if j==3
          ylim([-1 0.5])
          end
             if j==4
          ylim([-0.4 0.5])
             end
             if j==5
          ylim([-3 5])
          end
           if j==6
          ylim([-3.5 1])
          end
   ax=gca;
  ax.FontSize = 14; 
    jj=jj+1;
    box off;
end
legend([H1 H2 H4],{'Posterior Medium','68% error bands','95% error bands'},'FontSize',12,'Orientation','vertical')

%% Figure 4: Sub-sample estimations: structural impulse response functions of energy intensity to a 10% shock in the emission divergence measure according to different countries’ characteristics

%Countries with an historical positive contribution of structural effect to energy intensity 

%load data 
T = 52; %years;

numcountries=4; 

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

%Positive contribution of structural effect to energy intensity 
dataS = [countryData.DEU(:,1:11); countryData.FIN(:,1:11);countryData.FRA(:,1:11);countryData.JAP(:,1:11)];

DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;

%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

PP=[50 16 84];
PP1=[50 2.5 97.5];

ent_pcse=prctile(fsave1,PP);

%Countries with an historical negative contribution of structural effect to energy intensity 

%load data 
T = 52; %years;

numcountries=11; 

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

%Negative contribution of structural effect to energy intensity 
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];

DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;

%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

PP=[50 16 84];
PP1=[50 2.5 97.5];

ent_ncse=prctile(fsave1,PP);

%Countries ranked higher in the Climate Change Performance Index

%load data 
T = 52; %years;

numcountries=8; 

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

%high CCPI
dataS = [countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.NDL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11)];

DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;

%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

PP=[50 16 84];
PP1=[50 2.5 97.5];

ent_hccpi=prctile(fsave1,PP);

%Countries ranked lower in the Climate Change Performance Index

%load data 
T = 52; %years;

numcountries=7; 

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

%low CCPI
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.FIN(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NZL(:,1:11);  countryData.USA(:,1:11)];

DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;

%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

PP=[50 16 84];
PP1=[50 2.5 97.5];

ent_lccpi=prctile(fsave1,PP);

figure('Name','Figure 4: Sub-sample estimations: structural impulse response functions of energy intensity to a 10% shock in the emission divergence measure according to different countries characteristics','NumberTitle','off');
HH=0:HORZ-1;
jj=1;
    subplot(1,2,1)
    [H1,H2]=plotx6(HH,ent_pcse(:,:,6)')
    hold on;
    [H3,H4]=plotx5(HH,ent_ncse(:,:,6)')
    hold on; 
    H5 = plot(HH,ent(1,:,6),'LineStyle','-.', 'LineWidth',3,'MarkerSize',3,'Color',[0.0, 0.39, 0.0]);
      ax=gca;
 ax.FontSize = 14;
title('\textbf{(a)}','FontSize',24,'FontWeight','bold','Interpreter','latex');
         xlabel('years','interpreter','latex','FontSize',18); 
         ylabel('\%','interpreter','latex','FontSize',18); 
         ylim([-5 6]); 
    jj=jj+1;
    box off;
legend([H5 H2 H4],{'Posterior median in the full sample','(+) contribution of structural changes','(-) contributions of structural changes'},'FontSize',12,'Orientation','vertical')
 subplot(1,2,2)
    [H1,H2]=plotx6(HH,ent_hccpi(:,:,6)')
    hold on;
    [H3,H4]=plotx5(HH,ent_lccpi(:,:,6)')
    hold on; 
    H5 = plot(HH,ent(1,:,6),'LineStyle','-.', 'LineWidth',3,'MarkerSize',3,'Color',[0.0, 0.39, 0.0]);
  ax=gca;
 ax.FontSize = 14;
    title('\textbf{(b)}','FontSize',24,'FontWeight','bold','Interpreter','latex');
         xlabel('years','interpreter','latex','FontSize',18); 
         ylabel('\%','interpreter','latex','FontSize',18); 
         ylim([-5 6]);
    jj=jj+1;
    box off;
legend([H5 H2 H4],{'Posterior median in the full sample','High CCPI Ranking (GHG Factor)','Low CCPI Ranking (GHG Factor)'},'FontSize',12,'Orientation','vertical')


%% Figure 5: Structural impulse response functions to a 10% shock in our emission divergence measure for a panel of emerging countries that are typically net exporters of emissions

%load data 
T = 51; %years;

%all countries
numcountries = 6;

countryname = readtable('Database/countryname_6.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1971:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable (the dataS in the Beetsam et al. code)

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1971-2021_net_exporter.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1971-2021_net_exporter';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.CHN(:,1:8);countryData.IND(:,1:8);countryData.IDA(:,1:8); countryData.MOR(:,1:8);countryData.SAF(:,1:8);countryData.THL(:,1:8)];

DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;


dataS=[GDP DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(6:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;

%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);



%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10;
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

PP=[50 16 84];
PP1=[50 2.5 97.5];

ent_dev=prctile(fsave1,PP);

figure('Name','Figure 5: Structural impulse response functions to a 10% shock in our emission divergence measure for a panel of emerging countries that are typically net exporters of emissions','NumberTitle','off');
HH=0:HORZ-1;
jj=1;
for j=1:N
    subplot(3,2,jj)
    [H1,H2]=plotx2(HH,ent(:,:,j)');
    hold on;
    [H3,H4]=plotx2_95(HH,ent_95(:,:,j)');
    hold on; 
    H5=plot(HH,ent_dev(1,:,j)','Color',[0.5,0,0],'LineWidth',2);
    hold on; 
    H6=plot(HH,ent_dev(2,:,j)','Color',[0.5,0,0],'LineWidth',2,'LineStyle','--');
    hold on; 
    H7=plot(HH,ent_dev(3,:,j)','Color',[0.5,0,0],'LineWidth',2,'LineStyle','--');
title(['\textbf{' varnames{j} '}'],'FontSize',25,'FontWeight','bold','Interpreter','latex');
  if j==N || j==N-1 
         xlabel('years','interpreter','latex','FontSize',12);
  end
          if j==1 || j==2 || j==5 || j==6 
         ylabel('\%','interpreter','latex','FontSize',14);
          end
          if j==3 || j==4
          ylabel('\% points','interpreter','latex','FontSize',14);
          end
          if j==1
          ylim([-6 3])
          end
          if j==2
          ylim([-7 10])
          end
          if j==3
          ylim([-1 0.5])
          end
           if j==6
          ylim([-3.5 5])
          end
   ax=gca;
  ax.FontSize = 14; 
    jj=jj+1;
    box off;
end
legend([H1 H2 H4 H6],{'Developed countries (original sample)','68% bands','95% bands','Emerging countries (net exporters)'},'FontSize',12,'Orientation','horizontal')


%% Figure 6: Figure 6: Robustness checks on the structural impulse response function to a 10 % increase in the divergence measure on energy intensity

%1 lag

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;

%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=1;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_L1=prctile(fsave1,PP);

%2 lags

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=2;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_L2=prctile(fsave1,PP);

% 3 lags 

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=3;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_L3=prctile(fsave1,PP);

%prior 0.01

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=0.01;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_prior_001=prctile(fsave1,PP);

%prior 0.1

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=0.1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_prior_01=prctile(fsave1,PP);

%prior 10

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=10;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_prior_10=prctile(fsave1,PP);


%prior 1000

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1000;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_prior_1000=prctile(fsave1,PP);

%No time fixed effect 

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[DD DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=0;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_nq=prctile(fsave1,PP);

%gdp instead of domestic demand 

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[GDP DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_gdp=prctile(fsave1,PP);

%total consumption expenditure instead of domestic demand 

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[TCE DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_tce=prctile(fsave1,PP);

%External balance of goods and services instead of domestic demand 

%load data 
T = 52; %years;

%all countries
numcountries = 15;

countryname = readtable('Database/countryname_15.xlsx');
countrys = table2cell(countryname);
countrys1 = countrys';
varnames = readtable('Database/varnames.xlsx');
varnames = table2cell(varnames);
varnames = varnames';
varnames = [varnames(:,1:end)];
year = repmat(1970:2021,1,numcountries);
year = year'; 
year1 = 1:T;
year1 = repmat(year1,1,numcountries);
year1 = year1';
index_series = 1:numcountries;  
index = repelem(index_series, T);
index = index';

%%create the matrix of variable

for i=1:numcountries
    for j=1:numel(countrys1)
  [data_j] = xlsread('Database/Dataset_energy_1970-2021.xlsx',i);
end
end

% Define the file path to your Excel file with multiple spreadsheets
excelFilePath = 'Database/Dataset_energy_1970-2021';

% Read the list of sheet names (assuming each sheet corresponds to a country)
[~, sheetNames] = xlsfinfo(excelFilePath);

% Initialize a struct to store the data for each country
countryData = struct();

% Loop through the sheet names and import data for each country
for i = 1:numel(sheetNames)
    % Read data from the i-th spreadsheet
    data = xlsread(excelFilePath, sheetNames{i});
    
    % Use the sheet name as the field name in the struct
    countryData.(genvarname(sheetNames{i})) = data;
end

% allcountries
dataS = [countryData.BEL(:,1:11); countryData.CAN(:,1:11); countryData.DEU(:,1:11); countryData.DNK(:,1:11); countryData.ESP(:,1:11); countryData.FIN(:,1:11); countryData.FRA(:,1:11); countryData.GBR(:,1:11); countryData.ITA(:,1:11); countryData.JAP(:,1:11); countryData.NDL(:,1:11); countryData.NZL(:,1:11); countryData.NOR(:,1:11); countryData.SWE(:,1:11); countryData.USA(:,1:11)];
 
DM=log(dataS(:,2))*100;
IND_VA=dataS(:,3)*100;
SER_VA=dataS(:,5)*100;
EINT_IND=log(dataS(:,4))*100;
EINT=log(dataS(:,6))*100;
TES=log(dataS(:,7))*100;
GDP=log(dataS(:,8))*100;
DD=log(dataS(:,9))*100;
TCE=log(dataS(:,9))*100;
EBG=log(dataS(:,10)+100000)*100;

dataS=[EBG DM IND_VA SER_VA EINT_IND EINT];

Y = dataS;

%Global exogenous regressor - WIP (Baumeister and Hamilton; 2019 AER)

wip=xlsread('WIP.xlsx');
wip=reshape(wip, 12, []);
wip = (mean(wip));
wip=wip';
wip0=wip(5:end,:);
wip0=(repmat((wip0'),1,numcountries))';
wip0=log(wip0)*100;
%compute left and RHS
trend=0;
qtrend=0;
qdummies=1;
fe=1;
L=4;
hpx=1; %0 to difference in counter-factual, 1 hp-filter
PP=[50 16 84]; %point estimate and error bands
N=cols(dataS);
[Y,X]=preparexx(dataS,L,index,[],[],year1,trend,qtrend,qdummies,fe);
X=[X wip0];
tmpdat=packr([Y X index year]);

Y=tmpdat(:,1:N);
X=tmpdat(:,N+1:end-2);
index=tmpdat(:,end-1);
year=tmpdat(:,end);
id=unique(index);
EX=cols(X)-(N*L);
NN=length(id);
HORZ=10;
Update=100;
maxtrys=100;

%priors
lamdaP=1;% tightness of prior on lags inf=no prior
tauP=10*lamdaP; %tightness of prior on sum of coefficients
epsilonP=1/1000; %tightness of prior on constant
if ~isinf(lamdaP)
[yd,xd,b0,s0,S,Tstar]=getdummiestrendP(lamdaP,tauP,epsilonP,Y,L,EX,X(:,1:N));
end

%MCMC algorithm
REPS=25000;
BURN=15000;
FSIZE=REPS-BURN;
if ~isinf(lamdaP)
Y0=[Y;yd];
X0=[X;xd];
else
Y0=Y;
X0=X;
end

save('priors_ALL');
%storage
bsave=zeros(FSIZE,cols(X)*N);
ssave=zeros(FSIZE,N,N);
fsave1=zeros(FSIZE,HORZ,N);
fvsave1=zeros(FSIZE,HORZ,N);

%conditional mean of the VAR coefficients
mstar=vec(X0\Y0);  %ols on the appended data
xx=X0'*X0;
ixx=xx\eye(cols(xx));  %inv(X0'X0) to be used later in the Gibbs sampling algorithm
sigma=eye(N); %starting value for sigma
beta0=vec(X0\Y0);
igibbs=1;
jgibbs=1;

while jgibbs<REPS-BURN+1
    
    % Display progress:
    if mod(igibbs,Update)==0
        disp(sprintf(' Replication %s of %s.', ...
            num2str(igibbs), num2str(REPS)) );
    end
    
    
    %step 1: Sample VAR coefficients
    [ beta2,PROBLEM] = getcoefxx( mstar,sigma,ixx,maxtrys,N,L,EX );
    if PROBLEM
        beta2=beta0;
    else
        beta0=beta2;
    end
    varcoef=reshape(beta2,N*L+EX,N);
    
    
    %draw covariance
    e=Y0-X0*reshape(beta2,N*L+EX,N);
    scale=e'*e;
    sigma=iwpq(rows(Y0)-cols(X0),inv(scale));

    if igibbs>BURN && ~PROBLEM
            A0hat=chol(sigma);
        shock=zeros(1,N);
            shock(2)=1;
            [irfx1,dirfx1]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            fsave1(jgibbs,:,:)=((irfx1)/irfx1(1,2))*10; %set the size of the shock to 10%
          
            mse=0;
            msed=0;
            for j=1:N
                shock=zeros(1,N);shock(j)=1;
            [irfxj,dirfxj]=irfsimx(varcoef,N,L,A0hat,shock,HORZ+L,EX);
            mse=mse+cumsum(irfxj.^2);
            msed=msed+cumsum(dirfxj.^2);
            end
            fv1=cumsum(irfx1.^2)./mse;
          
            fvsave1(jgibbs,:,:)=fv1;
           

       
        jgibbs=jgibbs+1;
    end
    
    
    
    igibbs=igibbs+1;
    
    
end

ent_ebg=prctile(fsave1,PP);

zz=zeros(size(11,1),11);

figure('Name','Figure 6: Robustness checks on the structural impulse response function to a 10 % increase in the divergence measure on energy intensity','NumberTitle','off');
subplot(2,2,1)
H1=plot(HH,ent_L1(1,:,6),'^','LineStyle','-','LineWidth',3, 'MarkerSize',8, 'Color',[0.419, 0.556, 0.137]);
hold on;
H2=plot(HH,ent_L2(1,:,6),'o','LineStyle','-','LineWidth',3, 'MarkerSize',8,'Color', [0.6, 0.1, 0.1]);
hold on;
H3=plot(HH,ent_L3(1,:,6),'*','LineStyle','-','LineWidth',3,'MarkerSize',8, 'Color', [0.7, 0.6, 0.1]);
hold on;
[H4 H5]=plotx2(HH,ent(:,:,6)')
hold on;
[H6,H7]=plotx2_95(HH,ent_95(:,:,j)')
ylim([-3.5 3])
ylabel('\%','interpreter','latex','FontSize',14);
xlabel('years','interpreter','latex','FontSize',12);
title('Different Lag Selection','FontSize',18,'FontWeight','bold');
ax=gca;
  ax.FontSize = 16;
legend([H1 H2 H3 H4],{'1 lag','2 lags','3 lags','4 lags'},'interpreter','latex','FontSize',12,'Orientation','vertical')

subplot(2,2,2)
H1=plot(HH,ent_prior_001(1,:,6),'^','LineStyle','-','LineWidth',3, 'MarkerSize',8, 'Color',[0.419, 0.556, 0.137]);
hold on;
H2=plot(HH,ent_prior_01(1,:,6),'o','LineStyle','-','LineWidth',3, 'MarkerSize',8, 'Color', [0.6, 0.1, 0.1]);
hold on;
H3=plot(HH,ent_prior_10(1,:,6),'*','LineStyle','-','LineWidth',3, 'MarkerSize',8,'Color', [0.7, 0.6, 0.1]);
hold on;
H4=plot(HH,ent_prior_1000(1,:,6),'LineStyle','-.','LineWidth',3, 'Color', [0.8, 0.2, 0.5]);
hold on;
[H5 H6]=plotx2(HH,ent(:,:,6)')
hold on;
[H7,H8]=plotx2_95(HH,ent_95(:,:,j)')
ylim([-3.5 3])
ylabel('\%','interpreter','latex','FontSize',14);
xlabel('years','interpreter','latex','FontSize',12);
title('Hyperparamter in the Bayesian Prior','FontSize',18,'FontWeight','bold');
ax=gca;
  ax.FontSize = 16;
legend([H1 H2 H5 H3 H4],{'$\lambda = 0.01$','$\lambda = 0.1$','$\lambda = 1$','$\lambda=10$','$\lambda=1000$'},'interpreter','latex','Orientation','vertical')


subplot(2,2,3)
H1=plot(HH,ent_nq(1,:,6),'^','LineStyle','-','LineWidth',3, 'MarkerSize',8, 'Color',[0.419, 0.556, 0.137]);
hold on;
[H5 H6]=plotx2(HH,ent(:,:,6)')
hold on;
[H7,H8]=plotx2_95(HH,ent_95(:,:,j)')
ylim([-3.5 3])
ylabel('\%','interpreter','latex','FontSize',14);
xlabel('years','interpreter','latex','FontSize',12);
title('Model Specification','FontSize',18,'FontWeight','bold');
ax=gca;
  ax.FontSize = 16;
legend([H1 H5],{'Without time-fixed effect', 'With time-fixed effect'},'interpreter','latex','Orientation','vertical');

subplot(2,2,4)
H1=plot(HH,ent_gdp(1,:,6),'^','LineStyle','-','LineWidth',3, 'MarkerSize',8, 'Color',[0.419, 0.556, 0.137]);
hold on;
H2=plot(HH,ent_tce(1,:,6),'o','LineStyle','-','LineWidth',3, 'MarkerSize',8,'Color', [0.6, 0.1, 0.1]);
hold on;
H3=plot(HH,ent_ebg(1,:,6),'*','LineStyle','-','LineWidth',3,'MarkerSize',8, 'Color', [0.7, 0.6, 0.1]);
hold on;
[H4 H5]=plotx2(HH,ent(:,:,6)')
hold on;
[H6,H7]=plotx2_95(HH,ent_95(:,:,j)')
ylim([-3.5 3])
ylabel('\%','interpreter','latex','FontSize',14);
xlabel('years','interpreter','latex','FontSize',12);
title('Different Lag Selection','FontSize',18,'FontWeight','bold');
ax=gca;
  ax.FontSize = 16;
legend([H1 H2 H3 H4],{'Real GDP','Total Consumption Expenditure','External balance of goods and services ','Domestic Demand'},'interpreter','latex','FontSize',12,'Orientation','vertical')



