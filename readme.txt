bCRK_AMIP_CAM5_LW.tar.gz contains the monthly longwave (LW) broadband cloud radiative kernels (bCRKs) derived from 3-hourly CESM AMIP runs (forced with observed SST; year 2003 to year 2013). Simulations are run using CESM version 1.2.2 and CAM5 with ISCCP simulator turned on.

bCRK_AMIP_CAM5_SW.tar.gz contains the monthly shortwave (SW) bCRKs, same CESM simulations.

cal_cloud_feedback.m is a sample code in MATLAB to calculated cloud radaitive feedback using those kernels and using cloud fraction ISCCP histograms.

The bCRKs has a dimension of (x,y,i,j). The unit is Wm-2/%.

In these dataset,y=96,  x=144,  i=7, j=7;
192 latitudes: -90:1.8947:90
288 longitudes: 0:2.5:360
7 CTP bins: 1100-800, 800-680, 680-560, 560-440, 440-310, 310-180, 180-50 hPa
7 tau bins: 0-0.3, 0.3-1.3, 1.3-3.6, 3.6-9.4, 9.4-23, 23-60, 60-380


Reference: Huang, X.L., X. H. Chen, Q. Yue, Band-by-band contributions to the longwave cloud radiative feedbacks, Geophysical Research Letters, doi.org/10.1029/2019GL083466, 2019;
 
If having any questions, please email to xianglei@umich.edu or xiuchen@umich.edu. 
