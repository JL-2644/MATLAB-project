function pics = ReadImages(dirname,imageNames)
% This function reads a list of images given the filenames and the
% directory the files are located in.
% Inputs: -dirname (the name of the directory)
%         -imageNames (a 1xn 1D cell array containing n strings where each
%         element is a filename f an image)
% Outputs: pics (a 1xn cell array containg n images where each element is
% an rgb image.
% Author: JiaQi Li

% Create an empty cell array in which the images are going to be stored
pics = cell(1,length(imageNames));

for k = 1: length(imageNames)
    % Create a path to the file again
    file = fullfile(dirname, imageNames{k});
    % Read the image which will produce a 3d matrix
    images = imread(file);
    % Store the 3d array into the cell array where the element of the cell
    % array would correspond to a 3d matrix(image)
    pics{k} = images;
end

end

