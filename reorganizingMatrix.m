function [redLayer,greenLayer,blueLayer] = reorganizingMatrix(pics)
% This function takes in a cell array containing n elements where every
% element is a 3d matrix. It will then format this cell array into
% 3 matrices ( a red,green and blue layer)
% Inputs:   pics - (1xn cell array where n is the number of images)
% Outputs:  redLayer, greenLayer, blueLayer
% Author: JiaQi Li

% Specifies the number of images within the cell and sets it to a variable
nOfPics = length(pics);
% Find the number of rows and cols of the matrix stored in the cell array
[rows,cols,~] = size(pics{1});
% Concatenates all the matrices inside the cell array into one matrix
allImages = cat(2,pics{:});

% Slices a specific layer of allImages determined by the 3rd number in the
% brackets. (1 would correlate to red, 2 to green, and 3 to blue).
redLayer = allImages(:,:,1);
greenLayer = allImages(:,:,2);
blueLayer = allImages(:,:,3);

% Reshape the layer into the size of pics (rows & cols) and each
% layer correlates to a specific redLayer of an image
% eg the redLayer's first layer would contain the red pixels for the first
% image, 2nd for the 2nd and so on.
redLayer = reshape(redLayer,[rows,cols,nOfPics]);
greenLayer = reshape(greenLayer,[rows,cols,nOfPics]);
blueLayer = reshape(blueLayer,[rows,cols,nOfPics]);
end

