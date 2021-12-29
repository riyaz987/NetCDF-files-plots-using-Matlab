lon=ncread('uwind_96-20_region.nc','longitude');
lat=ncread('uwind_96-20_region.nc','latitude');
time=ncread('uwind_96-20_region.nc','time');
U=ncread('uwind_96-20_region.nc','u');

msl=ncread('msl_96-20_region.nc','msl');

matdate=((time/24)+datenum(1900,0,0));
matdate=double(matdate);
date= datevec(matdate);
%%
longitude1=(find(lon==60):find(lon==70));
latitude1=lat(1:121);

longitude2=(find(lon==80):find(lon==90));
latitude2=lat(1:121);
%%





%%
P1=msl('longitude1','latitude1',1:4);
P2=msl('longitude2','latitude2',1:4);


U1=U('longitude1','latitude1',1:4);
U2=U('longitude2','latitude2',1:4);