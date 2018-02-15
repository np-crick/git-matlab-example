function [ binnedData ] = binParameters( parameterMatrix, binSize )
%BINPARAMETERS Takes a parameter matrix (rows is individual animals,
%columns is single trials) and bins with a sliding window. Each column
%should be the average of the previous n binSize trials
binnedData= nan(size(parameterMatrix,1), size(parameterMatrix,2));
for i = binSize:length(binnedData)
    thisBin = parameterMatrix(:, (i-binSize)+1:i);
    binnedData(:,i) = nanmean(thisBin,2);
end
end

