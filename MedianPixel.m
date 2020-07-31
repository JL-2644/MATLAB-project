function [medRed,medGreen,medBlue] = MedianPixel(pixels)
% This function takes in a 1xnx3 array of rgb values which represent a list
% of pixels and then outputs the median values for red, green and blue.
% Inputs:   -pixels ( a 1xnx3 3D array of rgb values that represent a list
%           of pixels).
% Outputs:  -medRed (the median of all the red values from the list
%           of pixels)
%           -medGreen(the median of all the green values from the list
%           of pixels)
%           -medBlue (the median of all the blue values from the list
%           of pixels)
% Author: JiaQi Li

% First selects the 'layer' within the pixel, then finds the median using
% the median function and finally rounds the number to the nearest integer.
medRed = round(median(pixels(:,:,1)));
medGreen = round(median(pixels(:,:,2)));
medBlue = round(median(pixels(:,:,3)));
end

