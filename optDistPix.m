function [farRed,farGreen,farBlue] = optDistPix(redLayer,greenLayer ...
    ,blueLayer,pics)
% An optimized version of MostDistantPixel. Instead of finding the
% furtherst pixel from a 1x3x3 array one by one. This function does it to
% the whole image/(all the pixels at once).
% Inputs:   redLayer, greenLayer, blueLayer, and pics
% Outputs:  farRed, farGreen and farBlue
% Author:   JiaQi Li

% Specifies the number of images within the cell and sets it to a variable
nOfPics = length(pics);
% Find the median color pixels across layers
[medRed,medGreen,medBlue]=optMedPix(redLayer,greenLayer,blueLayer);

% Make a repeating number of matrices of layer size noOfPics so that
% the median matrices have the same size as the 'layers' variables.
moreRed = repmat(medRed,[1,1,nOfPics]);
moreGreen = repmat(medGreen,[1,1,nOfPics]);
moreBlue = repmat(medBlue,[1,1,nOfPics]);

% Find all the squared distances for all colors then add them together
squaredRed = (double(redLayer) - double(moreRed)).^2;
squaredGreen = (double(greenLayer) - double(moreGreen)).^2;
squaredBlue = (double(blueLayer) - double(moreBlue)).^2;
squaredDistances = squaredRed + squaredGreen + squaredBlue;

% Find the maximum distance and the element that correlates with that
% value. Set that element (which is a matrix of nxn) into a
% linear element number(n).
[~,I] = max(squaredDistances,[],3,'linear');

% Extract the values from each layer that correspond to the linear element
farRed = redLayer(I);
farGreen = greenLayer(I);
farBlue = blueLayer(I);
end

