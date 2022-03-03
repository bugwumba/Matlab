%lab 7 matching / distance transform

clc
clear all
close all

%% Problem 1 - templete matching 
I = imread('cameraman.tif');

t = I(60:85,130:170 ); % this is your template image

% write your code here
% functions: imadjust(), imrotate(), xcorr2(), normxcorr2()

% step 1 - get cross correlation / normalized cross correlation

% step 2 - find the peak value location in the correlation matrix

% step 3 -  use function size() to get the size of template image

% step 4 - use insertShape() to display the matched box

% for each experiment, display the related search image, template image,
% and matched box


%% Problem 2 - binary image matching

BW  = zeros(100);
b = strel( 'diamond',3);
b = b.Neighborhood;
R = b;

x = [3, 3, 50, 78, 90 ];
y = [5, 60, 20, 80, 1 ];
for i = 1 : length( x )
    BW(y(i):y(i)+6,x(i):x(i)+6) = b;
end

b = strel( 'square',5);
b = b.Neighborhood;

x = [31, 35, 80, 7, 60, 15, 20, 70 ];
y = [5, 60, 60, 80, 30, 20, 50, 66 ];
for i = 1 : length( x )
    BW(y(i):y(i)+4,x(i):x(i)+4) = b;
end

% now, BW is your search image, R is your reference image

% write your code here

% use cross correlation from problem 1 to find matching, record time

% use chamferMatch() to get the distance transform image Q

% then find the minimum distance in Q, record time

% display all the matching using insertShape()

% an example of recording time
% t1 = cputime
% run your code
% time_spent = cputime - t1