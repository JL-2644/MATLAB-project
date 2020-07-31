function imageNames = GenerateImageList(dirname,filType)
% This function fetches all image names with a specified file type within 
% a directory/folder
% Inputs:  -dirname ( a string containing the name of the directory
%          the images are contained in eg. pesky, lunar, tiny)
%          -filType eg png, jpg, tif
% Outputs: -imageNames ( a 1xn 1D cell array containing n strings where
%          each element is the filename of image)
% Author: JiaQi Li
% Idea came from https://www.mathworks.com/matlabcentral/answers/311780...
% -how-to-save-the-dir-output

% Joining two strings together, the user inputed file type eg png, jpg
% and the '*' with a '.'.
strElements = ["*", filType];
fullStr = join(strElements, '.');

% Creates a path to the folder given the directory name and the specified
% file type.
files = dir(fullfile(dirname,fullStr));

% Creates a cell array where every element is a filename (extracted from
% the struct array)
imageNames = {files.name};
end
