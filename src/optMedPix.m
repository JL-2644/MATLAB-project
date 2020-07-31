function [medRed,medGreen,medBlue]=optMedPix(redLayer,greenLayer,blueLayer)
% An optimized version of MedianPixel. Instead of taking each individual
% pixel one by one this function takes in all the pixzels and outputs the
% median values
% Inputs:   redLayer,greenLayer,blueLayer
% Outputs:  medRed, medGreen,medBlue
% Authot: JiaQi Li

% Find the median color pixels across the layers.
medRed = round(median(redLayer,3));
medGreen = round(median(greenLayer,3));
medBlue = round(median(blueLayer,3));
end

