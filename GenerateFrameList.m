function frameNumbers = GenerateFrameList(firstFrame,stepSize, numFrames)
% This function will generate a 1D array
%  Inputs:  -firstFrame
%           -stepSize
%           -number of frames
%  Outputs: -frameNumbers ( a 1xn 1D array)
% Author: JiaQi Li

endFrame = firstFrame + stepSize*(numFrames-1);
frameNumbers = linspace(firstFrame, endFrame, numFrames);
end

