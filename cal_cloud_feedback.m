function [cld_feedback] = cal_cloud_feedback(CRK,lat,lon,nband,CLF_hist_state1, CLF_hist_state2, gmeanTs1, gmeanTs2)
%%%%%%% inputs %%%%%%
% CRK                 ---cloud radiative kernels, which has a dimension (nlat, nlon, CTP_bin_num, tau_bin_num, nband), unit is Wm-2/%
% CLF_hist_state1     ---monthly-mean cloud fraction ISCCP histogram for climate state 1 with a unit 1, dimension (nlat,  nlon, CTP_bin_num, tau_bin_num)
% CLF_hist_state2     ---monthly-mean cloud fraction ISCCP histogram for climate state 2 with a unit 1, dimension (nlat, nlon, CTP_bin_num, tau_bin_num)
% gmeanTs1            ---global-mean and monthly-mean surface temperature for climate state 1, unit is K
% gmeanTs2            ---global-mean and monthly-mean surface temperature for climate state 2, unit is K
% nband               ---number of bands (=1 broadband)
%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%output %%%%
% cld_feedback       --- cloud radiative feedback, dimension (nlat, nlon, 7,7, band), unit is Wm-2/K

% by Xiuhong Chen @ University of Michigan on Oct. 30, 2019
%%%%%%%%%%%%%%%%%%%%%%

CTP0= [1100 800 680 560 440 310 180 0]; % CTP bin in hPa
TAU0 = [0 0.3 1.3 3.6 9.4 23 60 3080];  % tau bin

          
nlat =length(lat);
        
nlon =length(lon);

CTP_bin_num =7;
tau_bin_num =7;
        
cld_feedback = zeros(nlat,nlon,CTP_bin_num, tau_bin_num,nband) + NaN;
     
for ib=1:nband
    cld_feedback(:,:,:,:,ib) = CRK(:,:,:,:,ib) .* (CLF_hist_state2 - CLF_hist_state1) * 100/(gmeanTs2 - gmeanTs1);
end




