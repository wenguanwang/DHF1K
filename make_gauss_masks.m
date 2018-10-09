%[x,y]=find(fixations);
%densityMap= make_gauss_masks(y,x,[video_res_y,video_res_x]); 

function my_mask= make_gauss_masks(x,y,my_size,fixTime)
%This function drop Gaussians centered at (x,y) locations. my_size is the
%size of your original image (also the size of the output of this function). 

% Author    : Umesh Rajashekar
% Date      : 4 Jan. 2008

if (nargin < 4) 
    fixTime = ones(size(x));
end

W = 1; %Full width at half max in visual degrees of angle for the Gaussian
W = W*30; %For my experiments, 1 degree of visual angle is 60 pixels

%Convert full width at half max to variance
my_sigma = W/(2*sqrt(2*log(2)));


R = my_size(1);C= my_size(2);
big_R=2*R+1;big_C= 2*C+1; %Double your gauss size

[X Y] = meshgrid(0:big_C-1,0:big_R-1);
my_mask = zeros(R,C);

temp_num = (X-C).^2 + (Y-R).^2;
temp = exp(-temp_num/(2*my_sigma^2));
big_gauss = temp /(2*pi*my_sigma);

for i = 1: length(x)
    temp_x = floor(x(i));temp_y = floor(y(i));
    temp = big_gauss(R-temp_y:R-temp_y+R-1 ,C-temp_x:C-temp_x+C-1);
    my_mask = my_mask + temp*fixTime(i);   %Weight by time of fixation
end

my_mask = my_mask./max(my_mask(:));

