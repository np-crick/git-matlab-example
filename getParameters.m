function [ parameters ] = getParameters( dataSet, task, parameter )
%GETPARAMETERS From a given AutonoMouse data set, return a matrix of
%parameters for a given trial where each row is an individual animal and
%each column is the chosen parameter on each trial

names = fieldnames(dataSet);

for i=1:size(names,1)
    mouseparameters{i}=dataSet.(names{i}).(task).(parameter);
end
maxLength = max(cellfun(@length, mouseparameters));
parameters = nan(length(mouseparameters), maxLength);
for j=size(mouseparameters,2)
    parameters(j,1:length(mouseparameters{1,j}))=mouseparameters{1,j};
end

end

