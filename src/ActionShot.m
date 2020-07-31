function actionImage = ActionShot(pics)
% This function creates an action shot image to produce by finding the
% pixels from a stack of images that are most distant from the median
% pixels.
% Input:    -pics( a 1xn cell array where n is the number of images and
%           each element is an RGB image)
% Output:   -actionImage( an action shot in the form of an rgb image)
% Author: JiaQi Li

% Calling the function reorganizingMatrix
[redLayer,greenLayer,blueLayer] = reorganizingMatrix(pics);

% Calling the function optDistPix (optimized distant pixel)
[farRed,farGreen,farBlue] = optDistPix(redLayer,greenLayer,blueLayer,pics);

% Concatenate all the far colour layers together into a 3d matrix
actionImage = cat(3,farRed,farGreen,farBlue);
end

