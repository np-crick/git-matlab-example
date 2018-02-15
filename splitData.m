function [ control, test ] = splitData( dataSet )
%SPLITDATA splits a standard AutonoMouse data set into two structures, one
%for control animals, one for test animals based on NMDA parameter

names=fieldnames(dataSet);
test=struct();
control=struct();
for i=1:size(names,1)
    if dataSet.(names{i}).NMDA==0
        control.(names{i})=dataSet.(names{i});
    else
        test.(names{i})=dataSet.(names{i});
    end
end

end

