function [ parameters ] = getParameters( dataSet, task, parameter )
%GETPARAMETERS From a given AutonoMouse data set, return a matrix of
%parameters for a given trial where each row is an individual animal and
%each column is the chosen parameter on each trial

<<<<<<< HEAD
=======
mouseNames = fieldnames(dataSet);

allParameters = {};

for m = 1:length(mouseNames)
   thisMouse = dataSet.(mouseNames{m});
   thisTask = thisMouse.(task);
   thisParameter = thisTask.(parameter);
   
   allParameters{m} = thisParameter;
end

maxLength = max(cellfun(@length, allParameters));
parameters = nan(length(allParameters), maxLength);

for i = 1:length(allParameters)
   parameters(i,1:length(allParameters{1,i})) = allParameters{1,i}; 
end
>>>>>>> upstream/master

end

