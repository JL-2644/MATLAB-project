function squaredDistance = PixelDistance(P,Q)
% This function calculates the square of the distance between two points
% in colour space
% Inputs:   P-(an array containing 3 elements which represent a point
%           in 3d color space
%           Q-(the second point which is an array that contains a red,
%           green and blue)
% Outputs:  squaredDistance ( the square of the distance between two
% points).
% Author: JiaQi Li

% If P and Q are uint8 convert into double. If they are already in double
% nothing happens
P = double(P);
Q = double(Q);
squaredDistance = (P(1)-Q(1))^2 + (P(2)-Q(2))^2 + (P(3)-Q(3))^2;
end

