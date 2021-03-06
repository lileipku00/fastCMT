function elmay_P494_grid


cd /diego-local/Research/Data/El' Mayor'/   
load d_all_reduced_300.mat
lat=coseis.lat(29)
lon=coseis.lon(29)
latg=lat-1.5:0.1:lat+1.5;
long=lon-1.5:0.1:lon+1.5;
[Long Latg]=meshgrid(long,latg)
long=reshape(Long,1,size(Long,1)*size(Long,2));
latg=reshape(Latg,1,size(Latg,1)*size(Latg,2));
scatter(long,latg)
hold on
scatter(lon,lat,'x')
grid on
axis equal
gridf=[long' latg'];
save('gridfinal.xy','gridf','-ascii')