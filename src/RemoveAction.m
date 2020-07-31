function actionRemoved = RemoveAction(pics)
% This function removes action images to produce a static background
% picture by applying a median filter.
% Input:    -pics(1xn cell array where n is the number of images)
% Output:   -actionRemoved( a static background obtained by taking the
%           median RGB values from a stack of corresponging pixels)
% Author: JiaQi Li

% Calling the function reorganizingMatrix
[redLayer,greenLayer,blueLayer] = reorganizingMatrix(pics);

% Calling the optMedPix function
[medRed,medGreen,medBlue]=optMedPix(redLayer,greenLayer,blueLayer);

% Concatenate all the median color values into a 3d array (same size as
% that of a matrix within pics).
actionRemoved = cat(3, medRed,medGreen,medBlue);
end

