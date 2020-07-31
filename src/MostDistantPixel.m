function [farRed,farGreen,farBlue] = MostDistantPixel(pixels)
% This function takes in a 1xnx3 3d array and then calculates the most
% distant pixel from the median pixel
% Inputs: -pixels ( a 1xnx3 3D array of rgb values that represent a list of
%         pixels).
% Outputs: -farRed(the most distant red pixel)
%          -farGreen(the most distant green pixel)
%          -farBlue(the most distant blue pixel
% Author: JiaQi Li

% Call the median pixel function for red, green and blue
[red,green,blue] = MedianPixel(pixels);

% Format red,green and blue into a 3d matrix
medPix = double(cat(3,red,green,blue));

% Preallocating an array for allSquaredDist
allSquaredDist = zeros(1,size(pixels,2));

for k = 1:length(allSquaredDist)
    % Seperate pixels column by column
    subPix = double(pixels(1,k,:));
    % Call the PixelDistance function
    squaredDistance = PixelDistance(medPix, subPix);
    % Store all the squared distances into an array
    allSquaredDist(k) = squaredDistance;
end

% Find the element number that produces the max distance
[~,I] = max(allSquaredDist);

% Find the values for red, green and blue that correspond to the
% element number of maxDistance
farRed = pixels(1,I,1);
farGreen = pixels(1,I,2);
farBlue = pixels(1,I,3);
end

